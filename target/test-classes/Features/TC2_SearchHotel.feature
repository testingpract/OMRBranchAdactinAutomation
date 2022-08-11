@SearchHotel
Feature: Validating Adactin search hotel functionality

  Scenario Outline: Verifying search by selecting all the fields
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify text "Select Hotel" after search

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      |

  Scenario Outline: Verifying search by selecting only mandatory fields
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<noOfRooms>","<checkinDate>","<checkOutDate>" and "<adultsPerRoom>"
    Then User should verify text "Select Hotel" after search

    Examples: 
      | userName   | password    | location | noOfRooms | checkinDate | checkOutDate | adultsPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       |

  Scenario Outline: Verifying search by entering incorrect date
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify date error message "Check-In Date shall be before than Check-Out Date" and "Check-Out Date shall be after than Check-In Date"

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      |

  Scenario Outline: Verifying search without selecting any fileds
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel by without selecting any fields
    Then User should verify location error message "Please Select a Location"

    Examples: 
      | userName   | password    |
      | Saravana95 | Saravana@95 |
