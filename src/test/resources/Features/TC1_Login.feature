Feature: Validating Adactin Login functionality

  Scenario Outline: Login with valid credentials
    Given User is on the Adaction login Page
    When User should login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login

    Examples: 
      | userName   | password    |
      | Saravana95 | Saravana@95 |

  Scenario Outline: Login Adactin with Enter key
    Given User is on the Adaction login Page
    When User should login with the help of enter key "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login

    Examples: 
      | userName   | password    |
      | Saravana95 | Saravana@95 |

  Scenario Outline: Login Adactin with invalid credentials
    Given User is on the Adaction login Page
    When User should login "<userName>" , "<password>"
    Then User should verify error message contains "Verify Invalid Login details or Your Password might have expired."

    Examples: 
      | userName     | password    |
      | Saravana1995 | Saravana@95 |
