*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Documentation    Here all the elements that are commonly used over the project are present

*** Keywords ***
Start Test
    set selenium speed    1
    set selenium implicit wait    1
    open browser    https://test-dashboard.singit.io/   chrome
    maximize browser window

End Test
    close browser
