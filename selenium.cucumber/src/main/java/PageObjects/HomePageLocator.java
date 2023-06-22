package PageObjects;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePageLocator {
    @FindBy(linkText = "BAHMNI EMR LOGIN ")
    private WebElement HomePageUserName;
}
