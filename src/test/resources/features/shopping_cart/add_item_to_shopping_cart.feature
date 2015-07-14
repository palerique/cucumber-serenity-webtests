# language: pt
@version:Release-1
@version:Sprint-1.1
Funcionalidade: Add item to shopping cart
  As a buyer
  I want to be able to purchase items online
  So that I can get them faster

  Cenário: Add item to cart
    Dado I have searched for 'wool' in my region
    E I have selected item 1
    Quando I add it to the cart
    Então the item should appear in the cart
    E the shipping cost should be included in the total price




