*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Variables    ../../Locators/Settings.py
Documentation    This section contains all the test cases related to Settings page/functionality.

*** Keywords ***
Settings view section
    [documentation]    Verify settings page exists and user is able to view songs and perform actions

    Settings
    page should contain element    ${SettingsScreenFirstNameLocator}
    element should be visible    ${SettingsScreenFirstNameLocator}
    page should contain element    ${SettingsScreenLastNameLocator}
    element should be visible    ${SettingsScreenLastNameLocator}
    page should contain element    ${SettingsScreenTeacherAccessLocator}
    element should be visible    ${SettingsScreenTeacherAccessLocator}
    page should contain element    ${SettingsScreenInviteTeacherHeadingLocator}
    element should be visible    ${SettingsScreenInviteTeacherHeadingLocator}
    page should contain element    ${SettingsScreenInviteButtonLocator}
    element should be visible    ${SettingsScreenInviteButtonLocator}
    page should contain element    ${website_url_locator}
    element should be visible    ${website_url_locator}
    click element    ${SettingsScreenInviteButtonLocator}
    set selenium speed    0.1
    page should contain element    ${SettingsInvitationCopiedSuccessMessage}
    element should be visible    ${SettingsInvitationCopiedSuccessMessage}
    set selenium speed    1
