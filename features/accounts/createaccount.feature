Feature: Validate create new accounts
  Scenario Outline: create a new account
    Given user login to salesforce with <username> and <password>
    When user open accounts
    Then I see page with text Account Owner Alias
    When I open new account
    Then I see page with text Create Account
  Examples:
    | username              | password |
    | archanayenna@gmail.com|Asdf!@34  |
