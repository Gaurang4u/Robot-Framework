*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/resources.robot
*** Variables ***
${url}  https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
TC1
    ${pagetitle}=   launchbrowser   ${url}  ${browser}
    log to console  ${pagetitle}
    Click Link      xpath://a[@class='ico-login']
    Input Text      id:Email    pavanoltraining@gmail.com
    Input Text      id:Password    Test@123
    Click Element   xpath://button[@class='button-1 login-button']

