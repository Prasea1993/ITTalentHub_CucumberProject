package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

import Utilities.Wait;

public class PatientRegistrationPage {
	
	WebDriverWait wait;
	
	public PatientRegistrationPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
		wait=Wait.setSimpleWait(webDriver,30);
		
	}

	@FindBy(id = "bahmni.registration")
	private WebElement btnRegister;
	
	
	@FindBy(xpath = "//span[@class='nav-link' and contains(text(),'Create')]")
	private WebElement btnCreateNew;
	
	@FindBy(id = "givenName")
	private WebElement txtFirstName;
	
	@FindBy(id = "familyName")
	private WebElement txtLastName;
	
	
	@FindBy(id = "gender")
	private WebElement selectGender;
	
	@FindBy(id = "ageYears")
	private WebElement txtAge;
	
	
	
	@FindBy(id = "cityVillage")
	private WebElement txtVillageName;
	
	
	@FindBy(xpath = "//button[@class='right submit-btn']")
	private WebElement btnSubmit;
	
	
	public void clickRegister() {
		
		wait.until(ExpectedConditions.visibilityOf(btnRegister));
		btnRegister.click();
		
	}
	
     public void clickCreateNew() {
    	 
    	  wait.until(ExpectedConditions.visibilityOf(btnCreateNew));
    	  btnCreateNew.click();
		
	}
     
     
     public void fillPatientData(String fName,String lName,String gender,String age,String village ) {
    	 
    	 wait.until(ExpectedConditions.visibilityOf(txtFirstName));
    	 txtFirstName.sendKeys(fName);
    	 txtLastName.sendKeys(lName);
    	 Select select = new Select(selectGender);
 		 select.selectByVisibleText(gender);
 		 txtAge.sendKeys(age);
 		 txtVillageName.sendKeys(village);
    	 
     }
     
     public void clickSubmit() {
    	 
    	 btnSubmit.click();
    	 
 		
 	}


	
	
	
	
	
	
	
	
	
	
	
	

}
