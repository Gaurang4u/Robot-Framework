*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
GetAllLinksTest
    Open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize browser window

    ${alllinkscount}=   Get element count   xpath://a
    Log to console  ${alllinkscount}

    @{linkitmes}    create list
    FOR    ${i}    IN RANGE    1    ${alllinkscount}+1
        ${linktext}=    get text    xpath:(//a)[${i}]
        LOG TO CONSOLE    ${linktext}
    END