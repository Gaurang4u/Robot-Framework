*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/RegisterKeywords.robot

*** Variables ***
${Browser}  chrome
${SiteUrl}  https://demoqa.com/automation-practice-form
${firstname}     student
${lastname}  Password123
${email}    qwerty@demo.com
${phone}    1234567890

*** Test Cases ***
Register
    Open my Browser     ${SiteUrl}  ${Browser}
    Enter First Name  ${firstname}
    Enter Last Name  ${lastname}
    Enter Email     ${email}
    Select Gender
    Enter Phone     ${phone}
    Click Submit
    Sleep   3 seconds
    Verify Successful Login
    Close my Browsers
