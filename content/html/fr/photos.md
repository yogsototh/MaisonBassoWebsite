-----
title: Photos
noSubMenu: true
menupriority: 1
tags:
  - Maison
  - Vente
  - Provence
  - Vue
  - Mer
-----
<% 
def hline 
    %{<div class="templatemo_h_line"></div>} 
end
def onelinediv 
    %{<div class="templatemo_one_col">}
end
def enddiv
    %{</div>}
end
%>

<% content_for :bodyclass do %>clear<% end %>
<% content_for :intro do %>
    <h1>Maison Martégale</h1>
    <p>Ce site a été fait pour promouvoir la vente de cette maison
    martégale familiale.</p>
<% end %>

<%= onelinediv %>
<h2>Photos</h2>

<% [
'/img/maison/garage.jpg',
'/img/maison/veranda.jpg',
'/img/maison/salon.jpg',
'/img/maison/chambre.jpg',
'/img/maison/chambre3.jpg',
'/img/maison/chambre2.jpg'
].each do |img| %>

<img src="<%= img %>" alt="<%= img.sub(%r{.*/},'').sub(/.jpg$/,'') %>" width="100%"/>
<%= hline %>

<% end %>
