*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Test Setup    CommonFunctionality.Start Test
Test Teardown    CommonFunctionality.End Test

*** Test Cases ***
    set global variable    ${track_name}     Shonen
    set global variable    ${website_url_locator}   //*[contains(text(),"https://singit.io")]
