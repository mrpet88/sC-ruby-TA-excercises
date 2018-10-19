@variables
Feature: Variables Feature
When I want to learn how to use Global Variables

  @variables_01
  Scenario: example01 - hello
    Given the global variable is "hello"
    When the user change to "something"
    Then global variable should be "something"