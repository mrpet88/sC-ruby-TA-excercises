@variables
Feature: Variables Feature
When I want to learn how to use Global Variables

  @variables_01
  Scenario: example01 - hello
    Given the global variable is "hello"
    When the user change to "something"
    Then global variable should be "something"

  @variales_02
  Scenario: example02 - instance variable
    Given the instance variable is "George"
    When the user replace the instance variable with "Another Name"
    Then the instance variable should be "Marinos"

  @variable_03
  Scenario: example03 - constant variable
    Given the constant variable is "100"
    When the second constant variable is "200"
    Then confirm the constant variable is not "100"
