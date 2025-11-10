*** Settings ***
Library  SeleniumLibrary
Resource   ../Resources/login_resources1.robot
Library     DataDriver  ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup    LaunchBrowser
Suite Teardown    CloseBrowser
Test Template    InvalidLogin

*** Test Cases ***
LogintestwithExcel ${username}

*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputPassword    ${password}
    ClickLogin
    ErrorMessage