*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
ScrollingTest
    Open Browser    https://www.countries-ofthe-world.com/flags-of-the-world.html   chrome
    Maximize browser window
    #Execute javascript  window.scrollTo(0,2500)
    #Scroll element into view    xpath://img[@src='flags-normal/flag-of-India.png']
    Execute javascript  window.scrollTo(0,document.body.scrollHeight)   #end of page
    Sleep   3
    Execute javascript  window.scrollTo(0,-document.body.scrollHeight)   #start of page
