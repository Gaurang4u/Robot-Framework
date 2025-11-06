*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${login url}    https://admin-demo.nopcommerce.com/
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
    Input text  id:Email    ${username}

InputPassword
    [Arguments]  ${password}
    Input text  id:Password    ${password}

ClickLogin
    Click element   xpath://button[normalize-space()='Log in']

ClickLogout
    Click link  Logout

ErrorMessage
    Wait Until Page Contains    Login was unsuccessful

DashboardPage
    Page should contain     Dashboard

