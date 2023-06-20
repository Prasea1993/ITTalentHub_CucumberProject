package StepDefinitions;

import java.util.List;
import java.util.Map;

import org.testng.Assert;

import PageObjects.LoginPage;
import Utilities.TestContext;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {

	TestContext testContext;
	LoginPage loginPage;
	

	// instance variables /methods

	public LoginSteps(TestContext context) {
		testContext = context;
		loginPage = testContext.getPageObjectManager().getLoginPage();
	}

	@Given("Login page is displayed")
	public void login_page_is_displayed() {

		Assert.assertTrue(loginPage.isLoginPageDisplayed());
	}

	@When("Input credentials to login with headers table")
	public void input_credentials_to_login_with_headers_table(io.cucumber.datatable.DataTable dataTable) {

		List<Map<String, String>> dataRow = dataTable.asMaps(String.class, String.class);
		
		for (Map<String, String> dataMap : dataRow) {
			loginPage.fillUserData(dataMap.get("Username"), dataMap.get("Password"), dataMap.get("LoginType"));
		}

	}
	
	@And("Input credentials to login {string} and {string} and {string}")
	public void input_credentials_to_login_and_and(String username, String password, String logintype) {
	    
		loginPage.fillUserData(username,password,logintype);
	}


	@When("Click login button")
	public void click_login_button() {
		loginPage.clickLogin();

	}

	@Then("user should be able to login to the app")
	public void user_should_be_able_to_login_to_the_app()
	{
		Assert.assertTrue(loginPage.isUserInfoSectionDisplayed());
	}
	@When("A user click on login button")
	public void a_user_click_on_login_button() {

		loginPage.clickLogin();
	}
	@Then("A user should not able to login")
	public void a_user_should_not_able_to_login() {
		Assert.assertTrue(loginPage.isUserLoginPageInvalid());
	}

	@Then("Error should display {string}")
	public void error_should_display(String string) {
		Assert.assertTrue(loginPage.isUserInfoSectionInvalid());
	}
	{
		System.out.println("You are not authenticated or your session expired. Please login");
	}


}
