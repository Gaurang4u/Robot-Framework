** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    https://seleniumhq.github.io/selenium/docs/api/java/index    chrome


    Select Frame    packageListFrame    #id name xpath
    Click Link  org.openqa.selenium
    Unselect Frame

    Select Frame    packageFrame
    Click Link  WebDriver
    Unselect Frame

    Select Frame    classFrame
    Click Link  Help
    Unselect Frame
