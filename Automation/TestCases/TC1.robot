*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTest
    Open Browser    https://demo.nopcommerce.com/    chrome
    Click Link      xpath://a[@class='ico-login']
    Input Text      id:Email    pavanoltraining@gmail.com
    Input Text      id:Password    Test@123
    Click Element   xpath://button[@class='button-1 login-button']
    Close Browser
