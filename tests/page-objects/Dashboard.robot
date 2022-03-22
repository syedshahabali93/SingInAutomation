*** Settings ***
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Dashboard page/functionality.
Variables    ../../Locators/Dashboard.py

*** Keywords ***

Dashboard Test
    [documentation]    Verify elements are present on Dashboard

    press keys    None      ESC
    page should contain element    DashboardHeadingLocator
    element should be visible    DashboardHeadingLocator
    ${overview}     get text    DashboardHeadingLocator
    should be equal as strings    ${overview}   ${dashboard_heading_text}
    page should contain element    DashboardStudentsLoggedInLocator
    element should be visible    DashboardStudentsLoggedInLocator
    page should contain element    DashboardUsersActiveLocator
    element should be visible    DashboardUsersActiveLocator
    page should contain element    DashboardActiveUsersGraphCardLocator
    element should be visible    DashboardActiveUsersGraphCardLocator
    page should contain element    DashboardVocabularyQuizzesElementLocator
    element should be visible    DashboardVocabularyQuizzesElementLocator
    page should contain element    DashboardGrammarQuizzesElementLocator
    element should be visible    DashboardGrammarQuizzesElementLocator
    page should contain element    DashboardUnseenTestsElementLocator
    element should be visible    DashboardUnseenTestsElementLocator
    page should contain element    DashboardSpeakingTestsLocator
    element should be visible    DashboardSpeakingTestsLocator
    page should contain element    DashboardFillBlanksTestLocator
    element should be visible    DashboardFillBlanksTestLocator
    page should contain element    DashboardWardPausesTestsLocator
    element should be visible    DashboardWardPausesTestsLocator
    page should contain element    DashboardAssignmentsCardLocator
    element should be visible    DashboardAssignmentsCardLocator
    page should contain element    DashboardMostPressedWordsLocator
    element should be visible    DashboardMostPressedWordsLocator
    page should contain element    DashboardLogoutButtonLocator
    element should be visible    DashboardLogoutButtonLocator
#    click element    //*[@id="account"]/div[2]/span
#    ${dashboard_login}      get text    //*[@id="main-content"]/app-login/div/form/h1
#    should be equal as strings    ${dashboard_login}    Dashboard login

*** Variables ***
${dashboard_heading_text}    Overview
