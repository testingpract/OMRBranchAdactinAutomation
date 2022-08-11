@BookHotel
Feature: Validating Adactin Book A Hotel page

  Scenario Outline: Verifying Book A Hotel functionality by selecting all the fields
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify text "Select Hotel" after search
    And User should select hotel
    Then User should verify text "Book A Hotel" after selecting hotel
    And User should book hotel "<firstName>","<lastName>" and "<address>"
      | ccNo             | ccType           | expMonth | expYear | cvv |
      | 3739378822493297 | American Express | June     |    2022 | 234 |
      | 9826376383982762 | VISA             | July     |    2022 | 345 |
      | 6353829272625282 | Master Card      | August   |    2022 | 678 |
      | 7537292625282919 | Other            | November |    2022 | 901 |
    Then User should verify text after booking hotel "Booking Confirmation"

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom | firstName | lastName     | address                  |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      | Saravana  | Chithiraivel | OMR thuraipakkam chennai |

  Scenario Outline: Verifying Book A Hotel functionality by without selecting any fields
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should search hotel "<location>","<hotels>","<roomType>","<noOfRooms>","<checkinDate>","<checkOutDate>","<adultsPerRoom>" and "<childPerRoom>"
    Then User should verify text "Select Hotel" after search
    And User should select hotel
    Then User should verify text "Book A Hotel" after selecting hotel
    And User should book hotel without selecting any fields
    Then User should verify seven error messages "Please Enter your First Name","Please Enter you Last Name","Please Enter your Address","Please Enter your 16 Digit Credit Card Number","Please Select your Credit Card Type","Please Select your Credit Card Expiry Month" and "Please Enter your Credit Card CVV Number"

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      |
