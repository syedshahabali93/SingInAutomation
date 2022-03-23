*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ./page-objects/Login.robot
Resource    ./page-objects/Dashboard.robot
Resource    ./page-objects/Classes.robot
Resource    ./page-objects/Assignments.robot
Resource    ./page-objects/Marketplace.robot
Resource    ./page-objects/Settings.robot
Resource    ./page-objects/SideNavBar.robot
Resource    ./page-objects/UpdateTrack.robot
Resource    ./page-objects/UserMessages.robot

*** Test Cases ***
Begin
    Start Test

#Tests for Login Functionality
Login
    Login Test
    Forgot password
    Login to webpage

#Tests for Dashboard Section
Dashboard
    Dashboard Test

##Tests for Classes Section
Classes
    Classes View Section
    Show me how button
    All classes section
    + button
    Eye button
    Three vertical dots
    In three vertical dots - Edit class
    In three vertical dots - Watch class progress
    In three vertical dots - Content policy
    In three vertical dots - Remove Group
    In three vertical dots - Remove Group - Test Cancel button
    In three vertical dots - Remove Group - Test Remove button

#Tests for Assignments View
Assignments
    Assignments View Section
    Create New - Assignment
    Send Song - Assignment
    Send a word - Assignment

#Tests for Marketplace Section
Marketplace
    Marketplace view section
    Create Lesson - Marketplace
    Verify lesson view page details - Marketplace
    Use lesson pop-up - Marketplace
    Edit lesson pop-up - Marketplace
    Like lesson functionality test - Markeplace
    Dislike lesson functionality test - Marketplace
    Edit lesson - Marketplace
    Verify edited lesson details - Marketplace
    All assignment types - Edit Lesson - Marketplace
    Verify marketplace main page fields

#Tests for Settings Section
Settings
    Settings view section

#Tests for User-Messages Section
UserMessages
    User messages view section

#Tests for Update-Track Section
UpdateTrack
    Update Track View Page

#Exit
#    End Test
