*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
 MultipleBrowsersTest
    Open Browser    https://www.google.com/     chrome
    Maximize Browser Window
    Sleep   3

    Open Browser    https://www.bing.com/     chrome
    Maximize Browser Window

    Switch Browser  1
    ${title1}=  Get title
    log to console  ${title1}

    Switch Browser  2
    ${title2}=  Get title
    log to console  ${title2}

    Sleep   3
    Close All Browsers


