*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${SiteUrl}  ${Browser}
    Open Browser    ${SiteUrl}  ${Browser}
    Maximize Browser Window

Enter First Name
    [Arguments]  ${firstname}
    Input Text  ${txt_FirstName}    ${firstname}

Enter Last Name
    [Arguments]  ${lastname}
    Input Text  ${txt_LastName}    ${lastname}

Enter Email
    [Arguments]  ${email}
    Input Text  ${txt_email}    ${email}

Select Gender
    Click Element    ${txt_gender}

Enter Phone
    [Arguments]  ${phone}
    Input Text  ${txt_phone}    ${phone}

Click Submit
    Execute javascript  window.scrollTo(0,document.body.scrollHeight)   #end of page
    Click Button  ${butn_submit}

Verify Successful Login
    Page Should contain     Thanks for submitting the form

Close my Browsers
    Close all browsers

