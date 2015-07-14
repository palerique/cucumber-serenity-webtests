# language: pt
@component:ui
@version:Release-2
Funcionalidade: Search by keyword
  In order for buyers to find what they are looking for more efficiently
  As a seller
  I want buyers to be able to search for articles by keywords

  Cenário: Search for articles by keyword
    Dado I want to buy a wool scarf
    Quando I search for 'wool'
    Então I should see only articles related to 'wool'

  Cenário: Search by shop name
    Dado I want to see articles from a particular shop
    Quando I search by shop for 'docksmith'
    Então I should find 1 shop called 'docksmith'

  Delineação do Cenário: Search for many articles by keyword
    Dado I would like to buy a <article>
    Quando I search for '<article>'
    Então I should see only articles related to '<keyword>'
    Exemplos:
      | article      | keyword |
      | wool scarf   | wool    |
      | cotton shirt | cotton  |