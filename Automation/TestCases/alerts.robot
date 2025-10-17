** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
MyTestCase
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element   xpath://button[@id='confirmBtn']
    Sleep   3
    #Handle Alert    Accept
    #Handle Alert    dismiss
    #Handle Alert    leave
    #Alert Should Be Present  Press a button!
    Alert Should Not Be Present  Press a button!
