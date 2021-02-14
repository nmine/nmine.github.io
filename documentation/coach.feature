Feature: coah profile
  As a product leader
  I want to see coach profile
  In order to have more infos on this coach

  Scenario: the project leader go the more page
    Given the project is created wit the coaches 'persona1'
    When I go to the catalogue
    And I selecte the coach 'persona1'
    And I go to his profile
    #quoi afficher dans profile
    Then I see the picture, name  certification, specialities... of 'persona1'