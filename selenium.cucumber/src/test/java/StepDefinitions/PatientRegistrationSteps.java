package StepDefinitions;

import PageObjects.LoginPage;
import PageObjects.PatientRegistrationPage;
import Utilities.TestContext;
import Utilities.Wait;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Then;
import org.testng.Assert;

public class PatientRegistrationSteps {
	
	
	TestContext testContext;
	PatientRegistrationPage patientRegPage;
	

	// instance variables /methods

	public PatientRegistrationSteps(TestContext context) {
		testContext = context;
		patientRegPage = testContext.getPageObjectManager().getPatientRegPage();
	}

	@And("user clicks on the register button")
	public void user_clicks_on_the_register_button() {
	    
		patientRegPage.clickRegister();
	}

	@And("user clicks on the Create New button")
	public void user_clicks_on_the_create_new_button() {
	    
		patientRegPage.clickCreateNew();
	}

	@And("user entered the details {string}  {string} {string} {string} {string}")
	public void user_entered_the_details(String fName, String lName, String gender, String age, String village) {
	    
		patientRegPage.fillPatientData(fName, lName, gender, age, village);
	}

	@And("user clicks on the start save button")
	public void user_clicks_on_the_start_save_button()
	{
		patientRegPage.clickSubmit();
	}

	@Then("A user should not able click on save button")
	public void a_user_should_not_able_click_on_save_button()
	{
		{
			patientRegPage.clickSubmit();
		}
		System.out.println("Please match the format requested");
	}

	@Then("Error should display {string}")
	public void error_should_display(String string) {
		patientRegPage.clickCreateNew();
	}
	{

	}


}
