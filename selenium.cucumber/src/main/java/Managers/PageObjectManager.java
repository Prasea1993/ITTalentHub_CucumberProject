package Managers;

import org.openqa.selenium.WebDriver;

import PageObjects.LoginPage;

public class PageObjectManager {

    private final WebDriver webDriver;
    
    private LoginPage loginPage;

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

    
}
