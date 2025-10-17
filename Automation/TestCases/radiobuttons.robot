*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window
    Set Selenium Speed  2

#select radio button/checkbox can also be used if no label is there
    Click Element    xpath://label[@for='gender-radio-1']
    Click Element   xpath://label[@for='hobbies-checkbox-1']
    Click Element   xpath://label[@for='hobbies-checkbox-2']
    Close Browser









