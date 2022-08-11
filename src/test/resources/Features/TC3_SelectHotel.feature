@SelectHotel
Feature: Validating Adactin select hotel page

  Scenario Outline: Verifying Select hotel functionality by selecting hotel
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify text "Select Hotel" after search
    And User should select hotel
    Then User should verify text "Book A Hotel" after selecting hotel

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      |

  Scenario Outline: Verifying select hotel fuctionality without selecting hotel
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify text "Select Hotel" after search
    And User should click continue without selecting hotel
    Then User should verify error message "Please Select a Hotel" after clicking continue

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      |
