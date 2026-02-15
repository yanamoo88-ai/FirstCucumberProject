package com.ilcarro.stepDefinitions;

import com.ilcarro.pages.SearchPage;
import io.cucumber.java.en.Then;

import static com.ilcarro.pages.BasePage.driver;

public class NavigationSteps {
    SearchPage searchPage;

    @Then ("User verifies that navigation panel contains {int} links on Search page")
    public void verify_navigation_links(int count) {
        searchPage = new SearchPage(driver);
        driver.get("https://ilcarro.web.app/search");
        searchPage.verifyNavigationLinksCount(count);
    }
}
