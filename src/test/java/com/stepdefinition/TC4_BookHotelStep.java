package com.stepdefinition;

import cucumber.api.java.en.*;

public class TC4_BookHotelStep {
	
	@Then("User should book hotel {string},{string} and {string}")
	public void userShouldBookHotelAnd(String fName, String lName, String address, io.cucumber.datatable.DataTable dataTable) {

	}

	@Then("User should verify text after booking hotel {string}")
	public void userShouldVerifyTextAfterBookingHotel(String confirmtxt) {

	}

	@Then("User should book hotel without selecting any fields")
	public void userShouldBookHotelWithoutSelectingAnyFields() {

	}

	@Then("User should verify seven error messages {string},{string},{string},{string},{string},{string} and {string}")
	public void userShouldVerifySevenErrorMessagesAnd(String firstName, String lastName, String address, String ccNo, String ccType, String expMonth, String cvv) {

	}


}
