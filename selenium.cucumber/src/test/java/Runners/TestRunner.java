package Runners;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeSuite;
import org.testng.annotations.DataProvider;

@CucumberOptions(features = { "src//test//resources//features//PatientRegistration-Manasa//PatientRegistration.feature" }, glue = {
		"StepDefinitions" }, monochrome = false, plugin = { "pretty", "html:target/CucumberReport/TestCase1.html" })
public class TestRunner extends AbstractTestNGCucumberTests {

	@Override
	@DataProvider(parallel = false)
	public Object[][] scenarios() {
		System.out.println(super.scenarios().toString());
		return super.scenarios();
	}

	@BeforeSuite
	public void beforeSuite() {
		System.out.println("================ BEFORE SUITE ================");
	}

	@AfterSuite
	public void afterSuite() {
		System.out.println("================ AFTER SUITE ================");
	}
}
