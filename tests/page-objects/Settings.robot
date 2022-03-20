*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot

*** Keywords ***
Settings view section
    [documentation]    Verify settings page exists and user is able to view songs and perform actions

    Settings
    page should contain element    //*[contains(text(),"First name")]
    element should be visible    //*[contains(text(),"First name")]
    page should contain element    //*[contains(text(),"Last name")]
    element should be visible    //*[contains(text(),"Last name")]
    page should contain element    //*[contains(text(),"Teacher access")]
    element should be visible    //*[contains(text(),"Teacher access")]
    page should contain element    //*[contains(text(),"Invite a teacher")]
    element should be visible    //*[contains(text(),"Invite a teacher")]
    page should contain element    //*[@id="invite"]/button
    element should be visible    //*[@id="invite"]/button
    page should contain element    //*[contains(text(),"https://singit.io")]
    element should be visible    //*[contains(text(),"https://singit.io")]
    page should contain element    //*[contains(text(),"Message copied successfully")]
    element should be visible    //*[contains(text(),"Message copied successfully")]
