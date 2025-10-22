*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
MouseActions
    #Right click action
    Open Browser    https://swisnl.github.io/jQuery-contextMenu/demo.html   chrome
    Maximize Browser Window
    Open Context Menu   //span[@class='context-menu-one btn btn-neutral']
    Sleep   3

    #Double Click action
    Go to   https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Double Click Element    xpath://button[contains(text(),'Copy Text')]
    Sleep   3

    #Drag and Drop
    Go to   https://testautomationpractice.blogspot.com/
    Maximize Browser Window
    Drag and Drop   id:draggable    id:droppable
    Sleep   3