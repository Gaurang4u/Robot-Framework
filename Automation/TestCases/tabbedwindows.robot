** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
TabbedWindowsTest
    Open Browser    http://demo.automationtesting.in/Windows.html   chrome
    Maximize Browser Window
    Click Element   xpath://*[@id="Tabbed"]/a/button
    Sleep    3s
    Switch Window    title=Selenium