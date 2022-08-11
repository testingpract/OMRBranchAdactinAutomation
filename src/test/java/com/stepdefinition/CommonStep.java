package com.stepdefinition;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import io.github.bonigarcia.wdm.WebDriverManager;

public class CommonStep {

	
	@Given("User is on the Adaction login Page")
	public void loginPage() {
		
//		driver.get("https://adactinhotelapp.com/");
//		driver.manage().window().maximize();
	    
	}
	
	@Then("User should verify success message {string} after login")
	public void userShouldVerifySuccessMessageAfterLogin(String success) {
		
		
	   
	}
	


}
