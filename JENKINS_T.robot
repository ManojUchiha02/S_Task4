*** Settings ***
Library    SeleniumLibrary
Library     Collections
Library     Process
Suite Setup     Open Browser MAXIMIZE
Suite Teardown  Close All Browsers




*** Variables ***
${BROWSER}    Chrome
${URL}    https://www.techlistic.com/p/selenium-practice-form.html
${DRIVER_PATH}    /Users/manoj.boya/PycharmProjects/tasks/TASKS/chromedriver
${button}   //button[@class="btn btn-info"]
${URLD-D}    http://www.dhtmlgoodies.com/scripts/drag-drop-custom/demo-drag-drop-3.html





*** Test Cases ***
Key_Actions
    Click Element    //input[@name="firstname"]
    Sleep   3s
    Input Text    //input[@name="firstname"]    MANOJ
    Sleep   3s
    Press Keys      //input[@name="firstname"]      TAB
    Sleep   3s
    Input Text    //input[@name="lastname"]     BOYA
    Sleep   3s
    Press Keys  //input[@name="lastname"]   TAB
    Sleep   3s
    Click Element    //span[text()="x"]
    Sleep   3s
    Input Text    //input[@id="datepicker"]     04-04-1998
    Sleep   3s
    FOR     ${i}    IN RANGE    10
    Press Keys  //input[@id="datepicker"]   BACKSPACE
    END
    Sleep   3s
    Input Text    //input[@id="datepicker"]     04-04-1998
    Sleep   3s
Position
    ${x}    Get Horizontal Position     ${button}
    ${y}    Get Vertical Position   ${button}
    Log To Console  ${x},${y}
    Execute JavaScript    window.scrollTo(${x},${y})
    Sleep   3s
Mouse_actions
    Double Click Element    //input[@id="sex-0"]
    Sleep   3s
    Mouse Over  //a[text()="Click here to Download File"]
    Sleep   3s
    Double Click Element    //select[@id="continents"]
Drag Drop
    Open Browser    ${URLD-D}   ${Browser}  executable_path=${DRIVER_PATH}
    Maximize Browser Window
    Drag And Drop    //div[@id='box3']      //div[text()="United States"]
    Sleep   3s
F_Case
    Open Browser    ${Url}  ${Browser}  executable_path=${DRIVER_PATH}
    Maximize Browser Window
    Click Element   //b[text()="You may also like to read rocket"]
F_Test
    Click Element    //b[text()="Example Code: rocket"]

*** Keywords ***
Open Browser MAXIMIZE
    Open Browser    ${Url}  ${Browser}  executable_path=${DRIVER_PATH}
    Set Selenium Implicit Wait  18
    Maximize Browser Window