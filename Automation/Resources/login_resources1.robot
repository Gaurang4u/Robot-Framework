*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login url}    https://practicetestautomation.com/practice-test-login/
${browser}  chrome
*** Keywords ***
LaunchBrowser
    Open browser    ${login url}  ${browser}
    Maximize Browser Window
CloseBrowser
    Close all browsers
OpenLoginPage
    go to   ${login url}

InputUsername
    [Arguments]  ${username}
    Input text  id:username    ${username}

InputPassword
    [Arguments]  ${password}
    Input text  id:password    ${password}

ClickLogin
    Click element   xpath://button[@id='submit']

ClickLogout
    Click link  Logout

ErrorMessage
    Wait Until Page Contains    invalid!

DashboardPage
    Page should contain     Dashboard

