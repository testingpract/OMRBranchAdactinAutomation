package com.runner;

import org.junit.AfterClass;
import org.junit.runner.RunWith;

import com.reports.Reporting;

import cucumber.api.CucumberOptions;
import cucumber.api.SnippetType;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(tags = "@BookHotel",monochrome = true,features = "src\\test\\resources\\", glue = "com.stepdefinition",dryRun = true,snippets = SnippetType.CAMELCASE, plugin = {"pretty","json:target/adactin.json"})
public class TestRunnerClass {
	
	@AfterClass
	public static void report() {
		Reporting.generateJVMReport(System.getProperty("user.dir")+"\\target\\OMRBranchAPI.json");

	}

}


