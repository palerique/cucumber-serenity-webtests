# language: pt
@version:Release-1
@version:Sprint-1.2
Funcionalidade: Display product details
  In order to encourage buyers to make a purchase
  As a seller
  I want buyers to be able to see details about a product

  Cenário: Display product details from the search list
    Dado I have searched for 'Docking station' in my region
    Quando I select item 1
    Então I should see product description and price on the details page

  Cenário: Display social media links for a product
    Dado I have searched for 'Docking station' in my region
    Quando I select item 1
    Então I should see social media links
