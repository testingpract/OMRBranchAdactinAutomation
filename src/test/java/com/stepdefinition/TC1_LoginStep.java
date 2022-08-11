package com.stepdefinition;

import cucumber.api.java.en.*;

public class TC1_LoginStep {

	@When("User should Login {string} , {string}")
	public void login(String username, String pass) {

	}

	@When("User should Login with the help of enter key {string} , {string}")
	public void loginWithEnterKey(String username, String pass) {

	}
	
	@Then("User should verify error message contains {string}")
	public void userShouldVerifyErrorMessageContains(String error) {
	   
	}

}
