*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/LoginKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://practicetestautomation.com/practice-test-login/
${user}     student
${pwd}  Password123

*** Test Cases ***
Login
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter Username  ${user}
    Enter Password  ${pwd}
    Click Submit
    Sleep   3 seconds
    Verify Successful Login
    Close my Browsers
