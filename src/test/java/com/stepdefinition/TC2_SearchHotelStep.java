package com.stepdefinition;

import cucumber.api.java.en.*;

public class TC2_SearchHotelStep {
	
	@Then("User should search hotel {string},{string},{string},{string},{string},{string},{string} and {string}")
	public void userShouldSearchHotelAnd(String location, String hotels, String roomType, String noOfRooms, String checkIn, String checkOut, String adultPerRoom, String childPerRoom) {

	}

	@Then("User should verify text {string} after search")
	public void userShouldVerifyTextAfterSearch(String selectHotel) {

	}

	@Then("User should search hotel {string},{string},{string},{string} and {string}")
	public void userShouldSearchHotelAnd(String location, String noOfRooms, String checkIn, String checkOut, String adult) {

	}

	@Then("User should verify date error message {string} and {string}")
	public void userShouldVerifyDateErrorMessageAnd(String checkInDate, String checkOutDate) {

	}

	@Then("User should search hotel by without selecting any fields")
	public void userShouldSearchHotelByWithoutSelectingAnyFields() {

	}

	@Then("User should verify location error message {string}")
	public void userShouldVerifyLocationErrorMessage(String locationErrorMsg) {

	}

}
