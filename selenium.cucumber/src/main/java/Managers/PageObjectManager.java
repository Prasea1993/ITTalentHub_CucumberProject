package Managers;

import org.openqa.selenium.WebDriver;

import PageObjects.LoginPage;
import PageObjects.PatientRegistrationPage;

public class PageObjectManager {

    private final WebDriver webDriver;
    
    private LoginPage loginPage;
    private PatientRegistrationPage patientRegPage;

    public PageObjectManager(WebDriver webDriver) {
        this.webDriver = webDriver;
    }

    

    //General If...Else
    public LoginPage getLoginPage() {

        if (loginPage == null) {
            loginPage = new LoginPage(webDriver);
        }
        return loginPage;
    }
    
    
    public PatientRegistrationPage getPatientRegPage() {

        if (patientRegPage == null) {
        	patientRegPage = new PatientRegistrationPage(webDriver);
        }
        return patientRegPage;
    }

    
}
