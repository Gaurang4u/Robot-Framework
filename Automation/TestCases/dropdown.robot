*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Dropdowns and Lists
    Open Browser    https://demoqa.com/automation-practice-form    chrome
    Maximize Browser Window
    Set Selenium Speed  2


 # Click on the State dropdown
    Click Element    xpath=//div[@id='state']//div[contains(@class,'css-1hwfws3')]

    # Select NCR from the dropdown
    Click Element    xpath=//div[contains(@id,'react-select-3-option-0')]








