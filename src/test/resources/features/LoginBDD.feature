@All
  Feature: Login
    @Login @TDD
      Scenario Outline: Login with TDD
      Given User is on login page
      When User input <username> and <password>
      And User click login button
      Then User verify login <result>

      Examples:
      | username | password | result |
      | standar_user | secret_sauce | Passed |
      | invalidUsername | secret_sauce | Failed |
      | standar_user | invalidPassword | Failed |