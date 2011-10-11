-----
title: Maison Martéguale
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
    <h1>Maison Martéguale</h1>
    <p>Ce site a été fait pour promouvoir la vente de cette maison
    martéguale familiale.</p>
<% end %>

<%= onelinediv %>
<h2>Vente maison</h2>

<p>Maison située à Martigues, quartier “Ferrière, La rode”, très proche du centre ville et des commerces de proximité.
Vu magnifique sur l’étang de Berre, face au jardin public, pas de vis à vis.</p>

<ul>
 <li>Terrain de <i>1006 m<sup>2</sup></i></li>
 <li>Maison de plein pied, surface compensée d’environ <i>140 m<sup>2</sup></i></li>
 </ul>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>

<h2 id="details"> Descriptif </h2>

<ul>

     <li> 3 chambres (12 et 17 m<sup>2</sup>), 
</li><li> une Salle à manger (33 m<sup>2</sup>) équipée d’une cheminée avec un insert, 
</li><li> une grande salle de bain (8 m<sup>2</sup>), 
</li><li> une cuisine intégrée (12 m<sup>2</sup>), 
</li><li> un garage attenant à la maison qui sert de chaufferie et de buanderie (28 m<sup>2</sup>), 
</li><li> une véranda (20 m<sup>2</sup>),
</li><li> chauffage central au Gaz de ville, 
</li><li> pompe à chaleur (climatisation réversible) dans la salle à manger et les 3 chambres.
</li>

</ul>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>
<h2>Annexes</h2>

<p>Un garage double indépendant (35 m<sup>2</sup>), Une piscine 9m x 4,5m, un puits avec un bassin</p>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>
<p style="font-size: 2em"><b>Prix : 540.000€</b></p>
<%= enddiv %>
