# language: pt
@component:ui
@version:Sprint-7
Funcionalidade: Buscar por palavra chave
  Para os compradores encontrarem o que estão procurando de forma mais eficiente
  Como um vendedor
  Desejo que os compradores possam buscar por artigos utilizando palavras chave

  Cenário: Buscar artigos por palavra chave
    Dado que quero comprar um cachecol de lã
    Quando eu buscar por 'wool'
    Então devo ver apenas artigos relacionados com 'wool'

  Cenário: Buscar por nome da loja
    Dado que desejo visualizar artigos de uma loja em particular
    Quando eu buscar uma loja por 'docksmith'
    Então devo encontrar 1 loja chamada 'docksmith'

  Delineação do Cenário: Buscar por muitos artigos utilizando palavra chave
    Dado que quero comprar um <article>
    Quando eu buscar por '<article>'
    Então devo ver apenas artigos relacionados com '<keyword>'
    Exemplos:
      | article      | keyword |
      | wool scarf   | wool    |
      | cotton shirt | cotton  |

#Feature: Search by keyword
#  In order for buyers to find what they are looking for more efficiently
#  As a seller
#  I want buyers to be able to search for articles by keywords
#
#  Scenario: Search for articles by keyword
#    Given I want to buy a wool scarf
#    When I search for 'wool'
#    Then I should see only articles related to 'wool'
#
#  Scenario: Search by shop name
#    Given I want to see articles from a particular shop
#    When I search by shop for 'docksmith'
#    Then I should find 1 shop called 'docksmith'
#
#  Scenario Outline: Search for many articles by keyword
#    Given I would like to buy a <article>
#    When I search for '<article>'
#    Then I should see only articles related to '<keyword>'
#    Examples:
#      | article      | keyword |
#      | wool scarf   | wool    |
#      | cotton shirt | cotton  |