*** Settings ***
Library    SeleniumLibrary
Documentation    Here all elements for side navigation bar are present

*** Keywords ***
Dashboard
    click element    //*[@id="sidenav"]/ul/li[1]
Classes
    click element    //*[@id="sidenav"]/ul/li[2]
Assignments
    click element    //*[@id="sidenav"]/ul/li[3]
Marketplace
    click element    //*[@id="sidenav"]/ul/li[4]
Settings
    click element    //*[@id="sidenav"]/ul/li[5]
UserMessages
    click element    //*[@id="sidenav"]/ul/li[6]
UpdateTrack
    click element    //*[@id="sidenav"]/ul/li[7]
