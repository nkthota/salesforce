Feature: Create contacts
  Scenario Outline: Create a simple contact
    Given user login to salesforce with <username> and <password>
    When user open contacts
    Then I see page with text Contact Owner Alias
  Examples:
    | username              |password|
    | archanayenna@gmail.com|Asdf!@34|