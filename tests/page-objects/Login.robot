*** Settings ***
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Login page/functionality.
Library    SeleniumLibrary
Variables    ../../Locators/Login.py

*** Keywords ***

Login Test
    [documentation]    Verify webpage is opened using URL "https://test-dashboard.singit.io/"

    ${dashboardLogin}      get text    ${LoginScreenHeadingLocator}
    should be equal as strings    ${dashboardLogin}    ${dashboard_login}
    page should contain image    LoginScreenLogoLocator
    page should contain element     LoginScreenEmailLocator
    page should contain element    LoginScreenPasswordLocator
    page should contain button    LoginButtonLocator

Forgot password
    [documentation]    Verify enter email pop-up is opened on clicking Forgot Password? button

    click element   ForgotPasswordLocator
    ${resetPassword}   get text    ResetPasswordHeadingLocator
    should be equal as strings    ${resetPassword}     ${reset_password}
    page should contain element    ResetPasswordEmailFieldLocator
    page should contain button    ResetPasswordSubmitLocator
    input text    ResetPasswordEmailFieldLocator   %{username_email}
    click button    ResetPasswordSubmitLocator
    ${email_sent}   get text    ResetEmailSuccessMessageLocator
    should be equal as strings    ${email_sent}     ${reset_email_confirmation_message}
    press keys    None      ESC

Login to webpage
    [documentation]    Verify user is able to login with the provided credentials

    click element    LoginScreenEmailLocator
    input text    LoginScreenEmailLocator   %{username_email}
    click element    LoginScreenPasswordLocator
    input password    LoginScreenPasswordLocator   %{password}
    click button    LoginButtonLocator
    sleep    2

*** Variables ***
${dashboard_login}      Dashboard login
${reset_password}       Reset password
${reset_email_confirmation_message}     Email was sent
