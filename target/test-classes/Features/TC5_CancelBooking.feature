@CancelBooking
Feature: Validating Adactin cancel booking hotel page

  Scenario Outline: Verifying cancel order functionality
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
    And User should cancel the order Id
    Then User should verify the order cancelling success message "The booking has been cancelled."

    Examples: 
      | userName   | password    | location | hotels      | roomType | noOfRooms | checkinDate | checkOutDate | adultsPerRoom | childPerRoom | firstName | lastName     | address                  |
      | Saravana95 | Saravana@95 | Sydney   | Hotel Creek | Standard | 1 - One   | 18/07/2022  | 19/07/2022   | 1 - One       | 1 - One      | Saravana  | Chithiraivel | OMR thuraipakkam chennai |

  Scenario Outline: Verifying existing order cancelling functionality
    Given User is on the Adaction login Page
    When User should Login "<userName>" , "<password>"
    Then User should verify success message "Hello Saravana95!" after login
    And User should cancel the order Id "<orderId>"
    Then User should verify the order cancelling success message "The booking has been cancelled."

    Examples: 
      | userName   | password    | orderId    |
      | Saravana95 | Saravana@95 | 5K9Q0QPEEU |
