*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Login page/functionality.

*** Variables ***

*** Keywords ***

*** Test Cases ***

Login Test
    [documentation]    Verify webpage is opened using URL "https://test-dashboard.singit.io/"

    ${dashboard_login}      get text    //*[@id="main-content"]/app-login/div/form/h1
    should be equal as strings    ${dashboard_login}    Dashboard login
    page should contain image    //*[@id="logo"]/img
    page should contain element    //*[@id="main-content"]/app-login/div/form/div[2]/input
    page should contain element    //*[@id="main-content"]/app-login/div/form/div[3]/input
    page should contain button    //*[@id="main-button"]

Forgot password
    [documentation]    Verify enter email pop-up is opened on clicking Forgot Password? button

    click element    //*[@id="forget"]
    ${reset_password}   get text    //*[@id="wrapper"]/h2
    should be equal as strings    ${reset_password}     Reset password
    page should contain element    //*[@id="wrapper"]/form/input
    page should contain button    //*[text()="Submit"]
    input text    //*[@id="wrapper"]/form/input   zeeshanfyio@gmail.com
    click button    //*[text()="Submit"]
    ${email_sent}   get text    //*[@id="error"]
    should be equal as strings    ${email_sent}     Email was sent
    press keys    None      ESC

Login to webpage
    [documentation]    Verify user is able to login with the provided credentials

    click element    //*[@id="main-content"]/app-login/div/form/div[2]/input
    input text    //*[@id="main-content"]/app-login/div/form/div[2]/input   zeeshanfyio@gmail.com
    click element    //*[@id="main-content"]/app-login/div/form/div[3]/input
    input password    //*[@id="main-content"]/app-login/div/form/div[3]/input   Aa12345678
    click button    //*[@id="main-button"]
    press keys    None      ESC
