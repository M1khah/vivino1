@search
Feature: Vivino Search functionality
  Scenario: searching wine on Vivino
    Given a user goes to Vivino home page
    When a user search for "White"
    Then Vivino should return result for search
    And Test should parse the resultss
    And Write them to a console according to "White"
    Then User click on random search result
    And Validate the page
    And Page should contaain "White"
