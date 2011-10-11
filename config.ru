require 'rubygems'
require 'rack'
require 'rack/contrib'
require 'rack-rewrite'
require 'mime/types'
require 'pony'

use Rack::Deflater
use Rack::ETag

# 301 Permanent Redirect
# 302 Found
use Rack::Rewrite do
    r302 %r{^/support}, '/Scratch/en/support/index.html'
    r302 %r{^/src}, '/404.html'
    r302 %r{^/build}, '/404.html'
    r302 %r{^/html5boilerplate}, '/404.html'
    r302 %r{^/test}, '/404.html'
end

$rootdir="site"

$errorFile='site/404.html'
$mailFile='site/mail_sent.html'

module ::Rack
    class TryStatic < Static
        def initialize(app, options)
            super
            @try = ([''] + Array(options.delete(:try)) + [''])
        end

        def call(env)
            @next = 0
            while @next < @try.size && 404 == (resp = super(try_next(env)))[0] 
                @next += 1
            end
            404 == resp[0] ? @app.call : resp
        end

        private
        def try_next(env)
            env.merge('PATH_INFO' => env['PATH_INFO'] + @try[@next])
        end

    end
end

class MyMain < Rack::TryStatic
    def call(env) 
        request = Rack::Request.new(env)
        if request.path == "/contact" and request.post?
            Pony.mail(  
              :from => request[:name] + '<' + request[:mail] +'>',
              :to => "jeanclaude.basso@gmail.com",
              :subject => 'Vente maison (site)',
              :body => request[:body],
              :port => '587',
              :via => :smtp,
              :via_options => {
                  :address                => 'smtp.sendgrid.net',
                  :port                   => '587',
                  :enable_starttls_auto   => true,
                  :user_name              => ENV['SENDGRID_USERNAME'],
                  :password               => ENV['SENDGRID_PASSWORD'],
                  :authentification       => :plain,
                  :domain                 => ENV['SENDGRID_DOMAIN'],
              })
            return [200, {
                "Last-Modified"  => File.mtime($mailFile).httpdate,
                "Content-Type"   => "text/html",
                "Content-Length" => File.size($mailFile).to_s
            }, [File.read($mailFile)]]
        else
            super
        end
    end
end

use MyMain,
    :root => $rootdir,                              # static files root dir
    :urls => %w[/],                                 # match all requests 
    :try => ['.html', 'index.html', '/index.html']  # try these postfixes sequentially

run lambda { [404, {
                "Last-Modified"  => File.mtime($errorFile).httpdate,
                "Content-Type"   => "text/html",
                "Content-Length" => File.size($errorFile).to_s
            }, File.read($errorFile)] }
