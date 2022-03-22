*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Variables    ../../Locators/UserMessages.py

*** Keywords ***
User messages view section
    [documentation]    Verify user messages page exists and user is able to view songs and perform actions

    UserMessages
    ${userMessages}     get text    UserMessagesHeadingLocator
    should be equal as strings    ${user_messages}      ${userMessages}


*** Variables ***
${user_messages}    User messages
