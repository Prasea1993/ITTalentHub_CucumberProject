package PageObjects;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.Select;

public class LoginPage {

	public LoginPage(WebDriver webDriver) {
		PageFactory.initElements(webDriver, this);
	}

	@FindBy(xpath = "//div[@class='emr-login-text']")
	private WebElement headerEMR;

	@FindBy(id = "username")
	private WebElement txtUsername;

	@FindBy(id = "password")
	private WebElement txtPassword;

	@FindBy(xpath = "//button[text()='Login']")
	private WebElement btnLogin;

	@FindBy(id = "location")
	private WebElement selectLocation;

	@FindBy(xpath = "//button[@class='btn-user-info fr']")
	private WebElement btnUserInfo;

	public boolean isLoginPageDisplayed() {

		return headerEMR.isDisplayed();
	}

	public void fillUserData(String username, String password, String location) {
		txtUsername.sendKeys(username);
		txtPassword.sendKeys(password);
		Select select = new Select(selectLocation);
		select.selectByVisibleText(location);

	}

	public void clickLogin() {
		btnLogin.click();
	}

	public boolean isUserInfoSectionDisplayed() {

		return btnUserInfo.isDisplayed();
	}

}
