*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
RegTest

    ${implicittime}=   Get Selenium Implicit Wait
    Log To Console  ${implicittime}
    Open Browser    https://demowebshop.tricentis.com/register    chrome
    Maximize Browser Window

    Set Selenium Implicit Wait  2
    Select Radio Button  Gender   M

    Input Text  name:FirstName  David
    Input Text  name:LastName   John
    Input Text  name:Email   dj@gmail.com
    Input Text  name:Password   davidjohn
    Input Text  name:ConfirmPassword   davidjohn
