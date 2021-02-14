Feature: See Catalogue
  As a product leader
  I want to see coach catalogue
  In order to see all coach infos to select them for the project

  Scenario: the project see the catalogue
    Given the project is created wit the coaches
    When I go to the catalogue
    And I select the cach 'Pierre Mine'
    Then I see coach firstname and lastname
    And I see coach specificities
    #to complete

Feature: Filtering Catalogue
  As a product leader
  I want to filter catalogue
  In order to see only coach that mathes filtering criteria

  Scenario: the project filter the catalogue
    Given the project is created wit the coaches
    When I go to the catalogue
    #ajouter specifixities et personae coach
    And I filter the catalogue on specificities 'truc'
    Then I see coach the two coaches that have this specificities 'machin' et 'machin' display in the catalogue

Feature: Filtering Catalogue
  As a product leader
  I want to filter catalogue
  In order to see only coach that mathes filtering criteria

  Scenario: the project filter the catalogue
    Given the project is created wit the coaches
    When I go to the catalogue
    #ajouter specifixities et personae coach
    And I filter the catalogue on specificities 'truc'
    Then I see coach the two coaches that have this specificities 'machin' et 'machin' display in the catalogue

Feature: Basket overview
  As a product leader
  I want to see coaches already selected in the basket
  In order to knwo ho many coaches I still have to choose

  Scenario: the project leader check the basket overview
    Given the project is created wit the coaches
    When I go to the catalogue
    And I selecte two  coaches 'personae1' and 'personae2' for the catalogue
    #quoi afficher dans overview
    Then I see the picture, name and certification of 'persona1'
    Then I see the picture, name and certification of 'persona2'

Feature: number of coach selected
  As a product leader
  I want to see how many coach I have already selected
  In order to know if I can add some

  Scenario: the project leader see numbers of caoch selected in the catalogue
    Given the project is created wit the coaches 'persona1'
    When I go to the catalogue
    And I selecte the coach 'persona1'
    Then I see that one coach is already selected 'persona1'

Feature: hint on coach/trainee
  As an employe
  I want to display hint on coahee/trainee
  In order to give an idea to the project leader on how to choose number of coaches

  Scenario: the employe display hint on numbers of coaches/trainee
    Given the project is created wit the coaches 'persona1'
    When I go to the catalogue
    #triggered after selectinf coaches or always
    Then  I see the hint coach/trainee