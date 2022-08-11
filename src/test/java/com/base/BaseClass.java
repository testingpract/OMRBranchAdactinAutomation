package com.base;

import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.ui.Select;

import io.github.bonigarcia.wdm.WebDriverManager;

public class BaseClass {
	
public static WebDriver driver;
	
	
	public static void getDriver(String browserType) {
		
		switch (browserType) {
		case "chrome":
			WebDriverManager.chromedriver().setup();
			driver=new ChromeDriver();	
			break;
			
		case "firefox":
			WebDriverManager.firefoxdriver().setup();
			driver=new FirefoxDriver();	
			break;
		case "ie":
			WebDriverManager.iedriver().setup();
			driver=new InternetExplorerDriver();	
			break;
		case "edge":
			WebDriverManager.edgedriver().setup();
			driver=new EdgeDriver();	
			break;

		default:
			break;
		}

	}
	
	public static void getUrl(String Url) {
		driver.get(Url);

	}
	
	public static void maximize() {
		driver.manage().window().maximize();

	}
	
	public static void close() {
		driver.quit();

	}
	
	public WebElement findElementById(String id) {
		WebElement findId = driver.findElement(By.id(id));
		return findId;

	}
	
	public WebElement findElementByName(String name) {
		WebElement findName = driver.findElement(By.name(name));
		return findName;

	}
	
	public WebElement findElementByClassName(String className) {
		WebElement findClassName = driver.findElement(By.className(className));
		return findClassName;

	}
	
	public WebElement findElementByXpath(String xpath) {
		WebElement findXpath = driver.findElement(By.xpath(xpath));
		return findXpath;
			

	}
	
	public void sendText(WebElement element, String txt) {
		element.sendKeys(txt);

	}
	
	public void click(WebElement element) {
		element.click();

	}
	
	public void clear(WebElement element) {
		element.clear();

	}
	
	public void getText(WebElement element) {
		String getText = element.getText();
		System.out.println(getText);

	}
	
	
	public String getAttributeValue(WebElement element) {
		String attributeValue = element.getAttribute("value");
		return attributeValue;

	}
	
	//if the value attribute not available - > send attribute name to get value
	
	public String getAttributeValue(WebElement element,String attributeName) {
		String attributeValue = element.getAttribute(attributeName);
		return attributeValue;

	}
	
	public void selectOptionByText(WebElement element,String text) {
		Select select=new Select(element);
		select.selectByVisibleText(text);

	}
	
	public void selectOptionByIndex(WebElement element,int index) {
		Select select=new Select(element);
		select.selectByIndex(index);

	}
	
	public void selectOptionByValue(WebElement element,String value) {
		Select select=new Select(element);
		select.selectByValue(value);

	}
	
		
	public void alertOk() {
		Alert alert = driver.switchTo().alert();
		alert.accept();

	}

}
