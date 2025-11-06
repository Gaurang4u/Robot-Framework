*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/login_resources.robot
Suite Setup    LaunchBrowser
Suite Teardown    CloseBrowser
Test Template    InvalidLogin

*** Test Cases ***
Right User Empty Password    admin@yourstore.com    ${EMPTY}
Right User Wrong Password    admin@yourstore.com    xyz
Wrong User Right Password    admn@yourstore.com    admin
Wrong User Empty Password    admn@yourstore.com    ${EMPTY}
Wrong User Wrong Password    amin@yourstore.com    xyz

*** Keywords ***
InvalidLogin
    [Arguments]    ${username}    ${password}
    InputUsername    ${username}
    InputPassword    ${password}
    ClickLogin
    ErrorMessage
