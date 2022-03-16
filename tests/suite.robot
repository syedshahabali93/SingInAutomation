*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/CommonFunctionality.robot
Resource    ./page-objects/Login.robot
Resource    ./page-objects/Dashboard.robot
Test Setup    CommonFunctionality.Start Test
Test Teardown    CommonFunctionality.End Test
Library    SeleniumLibrary
Resource    ./page-objects/Login.robot
Resource    ./page-objects/Dashboard.robot
Resource    ./page-objects/Classes.robot
Library

*** Variables ***

*** Test Cases ***

#Tests for Login Functionality
Login Test
Forgot password
Login to webpage

#Tests for Dashboard Section
Dashboard Test

#Tests for Classes Section
Classes View Section
Show me how button
All classes section
+ button
Eye button
Three vertical dots
In three vertical dots - Edit class
In three vertical dots - Watch class progress
In three vertical dots - Content policy
