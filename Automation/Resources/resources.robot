*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
LaunchBrowser
    [Arguments]     ${appurl}   ${appbrowser}
    Open browser    ${appurl}  ${appbrowser}
    Maximize Browser Window
    ${title}=   get title
    [Return]    ${title}