*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingInputBox
    Open Browser    https://demo.nopcommerce.com/    chrome
    Maximize Browser Window
    Title Should Be     nopCommerce demo store. Home page title
    Click Link      xpath://a[@class='ico-login']
    ${"email_txt"}  set variable    id:Email

    element should be visible   ${"email_txt"}
    element should be enabled   ${"email_txt"}

    input text  ${"email_txt"}  qwerty@gmail.com
    sleep   5
    clear element text  ${"email_txt"}
    sleep   3
    close browser





