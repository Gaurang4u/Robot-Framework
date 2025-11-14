*** Settings ***
#commands for running
# robot --include=sanity TestCases/tagging.robot
#robot -i regression -i sanity TestCases/tagging.robot
# robot -e regression TestCases/tagging.robot
#robot -i regression -e sanity TestCases/tagging.robot

*** Test Cases ***
RegistrationTest
    [Tags]  regression
    log to console  this is user reg test
    log to console  user registration test

LoginTest
    [Tags]  sanity
    log to console  this is login test
    log to console  login test over

ChangeUserSettings
    [Tags]  regression
    log to console  this is change in user settings
    log to console  change user setting test is over

LogoutTest
    [Tags]  sanity
    log to console  this is logout test