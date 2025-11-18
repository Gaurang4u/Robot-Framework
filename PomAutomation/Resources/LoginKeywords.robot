*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter Username
    [Arguments]  ${username}
    Input Text  ${txt_loginUserName}    ${username}

Enter Password
    [Arguments]  ${password}
    Input Text  ${txt_loginPassword}    ${password}

Click Submit
    Click Button  ${btn_submit}

Verify Successful Login
    Title Should Be     Logged In Successfully | Practice Test Automation

Close my Browsers
    Close all browsers

