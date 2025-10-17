*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest
    ${timeout}=   Get Selenium Timeout
    Log To Console  ${timeout}

    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

    Wait Until Page Contains    Register
    Select Radio Button  Gender   M

    Input Text  name:FirstName  David
    Input Text  name:LastName   John
    Input Text  name:Email   dj@gmail.com
    Input Text  name:Password   davidjohn
    Input Text  name:ConfirmPassword   davidjohn
