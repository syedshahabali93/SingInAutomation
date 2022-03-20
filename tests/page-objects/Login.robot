*** Settings ***
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Login page/functionality.
Library    SeleniumLibrary

*** Keywords ***

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
    input text    //*[@id="wrapper"]/form/input   %{username_email}
    click button    //*[text()="Submit"]
    ${email_sent}   get text    //*[@id="error"]
    should be equal as strings    ${email_sent}     ${reset_email_confirmation_message}
    press keys    None      ESC

Login to webpage
    [documentation]    Verify user is able to login with the provided credentials

    click element    //*[@id="main-content"]/app-login/div/form/div[2]/input
    input text    //*[@id="main-content"]/app-login/div/form/div[2]/input   %{username_email}
    click element    //*[@id="main-content"]/app-login/div/form/div[3]/input
    input password    //*[@id="main-content"]/app-login/div/form/div[3]/input   %{password}
    click button    //*[@id="main-button"]
    sleep    2

*** Variables ***
${reset_email_confirmation_message}     Email was sent
