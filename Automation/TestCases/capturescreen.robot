*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login  chrome
    Set Window Size    1920    1080
    Wait Until Element Is Visible    xpath=//input[contains(@placeholder, 'Username')]    timeout=10s
    input text  xpath=//input[contains(@placeholder, 'Username')]    Admin
    input text  xpath=//input[contains(@placeholder, 'Password')]    admin123

    Wait Until Element Is Visible    xpath=//div[@class='orangehrm-login-branding']/img    timeout=10s
    #capture element screenshot  xpath=//div[@class='orangehrm-login-branding']/img   /home/gaurang/PycharmProjects/Automation/Logo.png
    #capture page screenshot     /home/gaurang/PycharmProjects/Automation/LoginTC.png

    Capture Element Screenshot  xpath=//div[@class='orangehrm-login-branding']/img   Logo.png
    Capture Page Screenshot     LoginTC.png