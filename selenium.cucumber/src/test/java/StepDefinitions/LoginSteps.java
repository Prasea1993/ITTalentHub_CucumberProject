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
	public void input_credentials_to_login_and_and(String username, String password, String logintype)
	{
		loginPage.fillUserData(username,password,logintype);
	}

	@When("Click login button")
	public void click_login_button()
	{
		loginPage.clickLogin();
	}

	@Then("user should be able to login to the app")
	public void user_should_be_able_to_login_to_the_app()
	{
		Assert.assertTrue(loginPage.isUserInfoSectionDisplayed());
	}

	@Then("User should be able to see error message {string}")
	public void user_should_be_able_to_see_error_message(String string)
	{
		Assert.assertTrue(LoginPage.isUserLoginInvalid());
	}

	@When("User enters Username as {string} and Password {string} and as LoginType {string}")
	public void user_enters_username_as_and_password_and_as_login_type(String string, String string2, String string3)
	{
		Assert.assertTrue(LoginPage.isUserLoginInvalid());
	}

	@Then("User should be able to see a message {string} below Username")
	public void user_should_be_able_to_see_a_message_below_username(String string)
	{
		Assert.assertTrue(LoginPage.isUserLoginInvalid());
	}

}
