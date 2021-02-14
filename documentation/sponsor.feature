Feature: create a sponsor
  As an project leader
  I want to create a sponsor
  In order to later add the sponsor to the trainee

  Scenario: the project leader create the trainee
    Given the project is created with trainee and sponsor role
    When I add a sponsor with names: ''
    And for trainee ''
    And for sponsor role ''
    Then sponsor 'persona1' is added to the trainee with sponsor role for trainee

Feature: upload a list of trainee
  As an project leader
  I want to upload a list of trainee
  In order to create the list of trainee in the project

  Scenario: the project leader create a lit of trainee from file
    Given the project is created
    When I add a list trainee from file with info:
    #ettre infos creation trainee
    Then list of 'persona1' are added to the project

Feature: edit a sponsor
  As an project leader
  I want to edit a sponsor
  In order to change sponsor infos

  Scenario: the project leader create th trainee
    Given the project sponsor is created
    When I edit a sponsor by changing infos : ''
    #ettre infos creation trainee
    Then sponsor 'persona1' has new infos

Feature: delete a sponsor
  As an project leader
  I want to delete a sponsor
  In order to remove the sponsor from the project

  Scenario: the project leader delete the sponsor
    Given the project is created
    When I delete a sponsor ''
    #ettre infos creation trainee
    Then 'persona1' is removed from project
    And trainee of sponsor has no sponsor ny more for role



