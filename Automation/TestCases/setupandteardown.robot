*** Settings ***

Suite Setup  log to console     Opening Browser
Suite Teardown  log to console  Closing Browser

Test Setup  log to console  Login
Test Teardown  log to console   Logout

*** Test Cases ***
TC1
    log to console  prepaid recharge

TC2
    log to console  postpaid recharge

TC3
    log to console  Search

TC4
    log to console  Advance Search