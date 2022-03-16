*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ./page-objects/Login.robot
Resource    ./page-objects/Dashboard.robot
Resource    ./page-objects/Classes.robot

*** Test Cases ***

Begin
    CommonFunctionality.Start Test

#Tests for Login Functionality
Login
    Login Test
    Forgot password
    Login to webpage

#Tests for Dashboard Section
Dashboard
    Dashboard Test

#Tests for Classes Section
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

End
    CommonFunctionality.End Test
