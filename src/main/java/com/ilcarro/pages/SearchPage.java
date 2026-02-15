package com.ilcarro.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import java.util.List;

public class SearchPage extends BasePage{

    public SearchPage(WebDriver driver) {
        super(driver);
    }

    @FindBy(css = ".navigation-link")
    List<WebElement> navigationLinks;

    public SearchPage verifyNavigationLinksCount(int linksCount) {
        assert navigationLinks.size() == linksCount;
        return this;
    }
}
