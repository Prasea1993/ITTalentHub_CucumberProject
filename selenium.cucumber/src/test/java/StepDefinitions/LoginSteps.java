package StepDefinitions;

import java.util.List;
import java.util.Map;

import org.testng.Assert;

import PageObjects.LoginPage;
import Utilities.TestContext;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class LoginSteps {

	TestContext testContext;
	LoginPage loginPage;

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

	@When("Click login button")
	public void click_login_button() {
		loginPage.clickLogin();

	}

	@Then("user should be able to login to the app")
	public void user_should_be_able_to_login_to_the_app() {
		Assert.assertTrue(loginPage.isUserInfoSectionDisplayed());
	}

}
