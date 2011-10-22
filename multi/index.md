-----
title: Maison Martégale
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
def  m2 
    %{m<sup>2</sup>}
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
fr:     <h1>Maison Martégale</h1>
fr:     <p>Ce site a été fait pour promouvoir la vente de cette maison
fr:     martégale familiale.</p>
en:     <h1>Provencal House</h1>
en:     <p>This website was made to promote the sell of a familial provençal house.
en:     </p>
<% end %>

<%= onelinediv %>
fr: <h2>Vente maison</h2>
en: <h2>The House</h2>

fr: <p>Maison située à Martigues, quartier “Ferrière, La rode”, très proche du centre ville et des commerces de proximité.
fr: Vue magnifique sur l’étang de Berre, face au jardin public, pas de vis à vis.</p>
en: <p>Wonderful House in Martigues, more precisely in "Ferriere, La rode". Very close to the center of the city.
en: Beautiful view of the "Etang de Berre". The house face a public garden.</p>

<ul>
fr:  <li>Terrain de <i>1006 m²</i></li>
fr:  <li>Maison de plein pied, surface habitable de <i>120 m²</i></li>
en:  <li><i>120 m²</i> of habitable surface (1291 sq²)</li>
en:  <li><i>1006 m²</i> (10828.493 ft²) with the garden</li>
</ul>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>

fr: <h2 id="details"> Descriptif </h2>
en: <h2 id="details"> Description </h2>

<ul>

fr:      <li> 3 chambres (12 et 17 m²), 
fr: </li><li> une Salle à manger (33 m²) équipée d’une cheminée avec un insert, 
fr: </li><li> une grande salle de bain (8 m²), 
fr: </li><li> une cuisine intégrée (12 m²).
fr: </li><li> Surface annexes: un garage attenant à la maison qui sert de chaufferie et de buanderie (28 m²), 
fr: </li><li> une véranda face à l'Étang de Berre (20 m²),
fr: </li><li> chauffage central au Gaz de ville, 
fr: </li><li> pompe à chaleur (climatisation réversible) dans la salle à manger et les 3 chambres.
fr: </li>
en:      <li> 3 bedrooms (12 and 17 m², 129 sq² and 182 sq²), 
en: </li><li> a dinning room (33 m², 355 sq²) with a fireplace.  
en: </li><li> a large bathroom (8 m², 85 sq²), 
en: </li><li> a kitchen (12 m², 129 sq²).
en: </li><li> A garage adjoining the house which serves as boiler room and laundry (27m², 290 sq²)
en: </li><li> A veranda facing the "Étang de Berre" (20 m², 215 sq²),
en: </li><li> Gas central heating, 
en: </li><li> heat pump (air conditioning) in the dining room and three bedrooms.
en: </li>

</ul>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>
fr: <h2>Annexes</h2>
en: <h2>Annexes</h2>

fr: <p>Un garage double indépendant (35 m²), Une piscine 9m x 4,5m, un puits avec un bassin.</p>
en: <p>A double independent garage (35 m²), A swimming pool  9m x 4,5m, A well with a pool.</p>

<%= enddiv %>
<%= hline %>

<%= onelinediv %>
fr: <p style="font-size: 2em"><b>Prix : 540.000€</b></p>
en: <p style="font-size: 2em"><b>Price : 540.000€</b></p>
<%= enddiv %>
