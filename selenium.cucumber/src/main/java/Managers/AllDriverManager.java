package Managers;

import Enums.DriverType;
import Enums.EnvironmentType;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.firefox.FirefoxOptions;
import org.openqa.selenium.remote.DesiredCapabilities;
import org.openqa.selenium.remote.RemoteWebDriver;
import org.openqa.selenium.safari.SafariDriver;

import java.net.URL;
import java.util.concurrent.TimeUnit;

public class AllDriverManager {

    private RemoteWebDriver webDriver;
    private static DriverType driverType;
    private static EnvironmentType environmentType;

    public AllDriverManager() {
        driverType = FileReaderManager.getInstance().getConfigFileReader().getBrowser();
        environmentType = FileReaderManager.getInstance().getConfigFileReader().getEnvironment();
    }

    private RemoteWebDriver createLocalDriver() {
        try {
            switch (driverType) {
                case CHROME:
                    WebDriverManager.chromedriver().setup();
                    ChromeOptions chromeOptions = new ChromeOptions();
                    chromeOptions.addArguments("--ignore-ssl-errors=yes");
                    chromeOptions.addArguments("--ignore-certificate-errors");
                    webDriver = new ChromeDriver(chromeOptions);
                    webDriver.manage().window().maximize();
                    break;
                case REMOTE_CHROME:

                    DesiredCapabilities capability=new DesiredCapabilities();
                    capability.setCapability("browserstack.user", "prashanthsamudra_g4CrU0");
                    capability.setCapability("browserstack.key", "5hcvzDcL8UnYZJcjeotG");
                    ChromeOptions chromeOptions2 = new ChromeOptions();
                    chromeOptions2.addArguments("--ignore-ssl-errors=yes");
                    chromeOptions2.addArguments("--ignore-certificate-errors");
                    capability.setCapability(ChromeOptions.CAPABILITY,chromeOptions2);
                    capability.setCapability("os", "Windows");
                    capability.setCapability("osVersion", "10");
                    capability.setCapability("browserVersion", "latest");
                    webDriver = new RemoteWebDriver(new URL("http://hub.browserstack.com/wd/hub"),capability);
                    webDriver.manage().window().maximize();
                    break;
                case FIREFOX:
                    WebDriverManager.firefoxdriver().setup();
                    FirefoxOptions firefoxOptions = new FirefoxOptions();
                    //firefoxOptions.addArguments("--headless");
                    webDriver = new FirefoxDriver(firefoxOptions);
                    break;
                case EDGE:
                    WebDriverManager.edgedriver().setup();
                    webDriver = new EdgeDriver();
                    break;
                case SAFARI:
                    webDriver = new SafariDriver();
                    break;
            }
            long time = FileReaderManager.getInstance().getConfigFileReader().getTime();

            webDriver.manage().timeouts().implicitlyWait(time, TimeUnit.SECONDS);
            webDriver.manage().timeouts().pageLoadTimeout(time, TimeUnit.SECONDS);
            webDriver.manage().timeouts().setScriptTimeout(time, TimeUnit.SECONDS);
            return webDriver;
        }
        catch(Exception ex){
            return null;
        }
    }

    private RemoteWebDriver createRemoteDriver() {
        throw new RuntimeException("Remote web driver is not yet implemented");
    }

    private RemoteWebDriver createDriver() {
        try {
            switch (environmentType) {
                case LOCAL:
                    webDriver = createLocalDriver();
                    break;
                case REMOTE:
                    webDriver = createRemoteDriver();
                    break;
            }
            return webDriver;
        }
        catch(Exception ex){
            return null;
        }
    }

    public RemoteWebDriver getDriver() {
        if (webDriver == null) webDriver = createDriver();
        return webDriver;
    }

    public void closeDriver() {
        webDriver.close();
        webDriver.quit();
    }
}
