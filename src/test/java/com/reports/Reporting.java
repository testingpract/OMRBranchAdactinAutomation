package com.reports;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

public class Reporting {
	
	public static void generateJVMReport(String jsonFile) {
	
		File file=new File("C:\\Users\\hai\\eclipse-workspace\\OMRBranchAdactinAutomation\\target"); 
		Configuration configuration=new Configuration(file, "Adactin Hotel");
		
		configuration.addClassifications("Browser Name", "Chrome");
		configuration.addClassifications("Browser Version", "103.0.5060.114");
		configuration.addClassifications("OS", "WINDOWS 10");
		
		List<String> jsonFiles=new ArrayList<String>();
		jsonFiles.add(jsonFile);
		
		ReportBuilder builder=new ReportBuilder(jsonFiles, configuration);
		builder.generateReports();
		

}

}
