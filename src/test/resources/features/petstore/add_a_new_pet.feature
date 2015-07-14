# language: pt
@version:Release-2
Funcionalidade: Add a new pet
  In order to sell a pet
  As a store owner
  I want to add a new pet to the catalog

  Cenário: Add a dog
    Dado I have the following pet
      | name | status    |
      | Fido | available |
    Quando I add the pet to the store
    Então the pet should be available in the store
