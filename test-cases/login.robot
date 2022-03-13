*** Settings ***
Library    SeleniumLibrary

*** Variables ***

*** Test Cases ***
Open webpage
    [documentation]    Verify webpage is opened using URL "https://test-dashboard.singit.io/"

    set selenium speed    1
    set selenium implicit wait    1
    open browser    https://test-dashboard.singit.io/   chrome
    ${dashboard_login}      get text    //*[@id="main-content"]/app-login/div/form/h1
    should be equal as strings    ${dashboard_login}    Dashboard login
    page should contain image    //*[@id="logo"]/img
    page should contain element    //*[@id="main-content"]/app-login/div/form/div[2]/input
    page should contain element    //*[@id="main-content"]/app-login/div/form/div[3]/input
    page should contain button    //*[@id="main-button"]
    maximize browser window

Forgot password
    [documentation]    Verify enter email pop-up is opened on clicking Forgot Password? button

    click element    //*[@id="forget"]
    ${reset_password}   get text    //*[@id="wrapper"]/h2
    should be equal as strings    ${reset_password}     Reset password
    page should contain element    //*[@id="wrapper"]/form/input
    page should contain button    //*[text()="Submit"]
    input text    //*[@id="wrapper"]/form/input   zeeshanfyio@gmail.com
    click button    //*[text()="Submit"]
    ${email_sent}   get text    //*[@id="error"]
    should be equal as strings    ${email_sent}     Email was sent
    press keys    None      ESC

Login to webpage
    [documentation]    Verify user is able to login with the provided credentials

    click element    //*[@id="main-content"]/app-login/div/form/div[2]/input
    input text    //*[@id="main-content"]/app-login/div/form/div[2]/input   zeeshanfyio@gmail.com
    click element    //*[@id="main-content"]/app-login/div/form/div[3]/input
    input password    //*[@id="main-content"]/app-login/div/form/div[3]/input   Aa12345678
    click button    //*[@id="main-button"]
    press keys    None      ESC

Dashboard
    [documentation]    Verify elements are present on Dashboard

    page should contain element    //*[@id="wrapper"]/div[1]/h1
    element should be visible    //*[@id="wrapper"]/div[1]/h1
    ${overview}     get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${overview}   Overview
    page should contain element    //*[contains()="students currently logged in."]
    element should be visible    //*[contains()="students currently logged in."]
    page should contain element    //*[contains()="Users are active now"]
    element should be visible    //*[contains()="Users are active now"]
    page should contain element    //*[@id="apexchartsh2gy3olo"]
    element should be visible    //*[@id="apexchartsh2gy3olo"]
    page should contain element    //*[text()="Vocabulary quizzes"]
    element should be visible    //*[text()="Vocabulary quizzes"]
    page should contain element    //*[text()="Grammar quizzes"]
    element should be visible    //*[text()="Grammar quizzes"]
    page should contain element    //*[text()="Unseen tests"]
    element should be visible    //*[text()="Unseen tests"]
    page should contain element    //*[text()="Speaking tests"]
    element should be visible    //*[text()="Speaking tests"]
    page should contain element    //*[text()="Fill Blanks tests"]
    element should be visible    //*[text()="Fill Blanks tests"]
    page should contain element    //*[text()="ward pauses tests"]
    element should be visible    //*[text()="ward pauses tests"]
    page should contain element    //*[text()="Assignments"]
    element should be visible    //*[text()="Assignments"]
    page should contain element    //*[text()="Most pressed words"]
    element should be visible    //*[text()="Most pressed words"]
    page should contain element    //*[contains()="Log out"]
    element should be visible    //*[contains()="Log out"]
    click element    //*[@id="account"]/div[2]/span
#    ${dashboard_login}      get text    //*[@id="main-content"]/app-login/div/form/h1
#    should be equal as strings    ${dashboard_login}    Dashboard login

Classes
    [documentation]    Verify classes page exist and user is able to open classes and perform actions

    click element    //*[@id="sidenav"]/ul/li[2]/p
    ${classes}  get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${classes}    My Classes
    page should contain element    //*[@id="menu-col"]/li[1]/p
    element should be visible    //*[@id="menu-col"]/li[1]/p
    page should contain element    //*[@id="content"]/div/div[1]/h2
    element should be visible    //*[@id="content"]/div/div[1]/h2
    page should contain element    //*[@id="actions"]/i[1]
    element should be visible    //*[@id="actions"]/i[1]
    page should contain element    //*[@id="actions"]/i[2]
    element should be visible    //*[@id="actions"]/i[2]

Show me how
    [documentation]    Verify that the Admin can open the "Show me how pop up"

    page should contain element    //*[@id="info"]
    element should be visible    //*[@id="info"]
    click element    //*[@id="info"]
    ${manage_groups}    get text    //*[@id="wrapper"]/h2
    should be equal as strings    ${manage_groups}  How to manage groups?
    ${classes_schools}    get text    //*[@id="wrapper"]/h3[1]
    should be equal as strings    ${classes_schools}  Classes and schools
    ${managing_students}    get text    //*[@id="wrapper"]/h3[2]
    should be equal as strings    ${managing_students}  Managing Students
    page should contain element    //*[@id="wrapper"]/button
    element should be visible    //*[@id="wrapper"]/button
    click element    //*[@id="wrapper"]/button

All Classes
    [documentation]    Verify that the Admin can see the all classes

    page should contain element    //*[@id="content"]/table/tr[1]/th[1]
    element should be visible    //*[@id="content"]/table/tr[1]/th[1]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[1]
    should be equal as strings    ${hash_text}  #
    page should contain element    //*[@id="content"]/table/tr[1]/th[2]
    element should be visible    //*[@id="content"]/table/tr[1]/th[2]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[2]
    should be equal as strings    ${hash_text}  Name
    page should contain element    //*[@id="content"]/table/tr[1]/th[3]
    element should be visible    //*[@id="content"]/table/tr[1]/th[3]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[3]
    should be equal as strings    ${hash_text}  Students
    page should contain element    //*[@id="content"]/table/tr[1]/th[4]
    element should be visible    //*[@id="content"]/table/tr[1]/th[4]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[4]
    should be equal as strings    ${hash_text}  Words sent
    page should contain element    //*[@id="content"]/table/tr[1]/th[5]
    element should be visible    //*[@id="content"]/table/tr[1]/th[5]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[5]
    should be equal as strings    ${hash_text}  Song heared
    page should contain element    //*[@id="content"]/table/tr[1]/th[6]
    element should be visible    //*[@id="content"]/table/tr[1]/th[6]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[6]
    should be equal as strings    ${hash_text}  Quizzes Answered
    page should contain element    //*[@id="content"]/table/tr[2]/td[7]/i
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]/i

+ icon
    [documentation]    Verify that the "+" sign can open "Create a new group" pop-up

    click element    //*[@id="actions"]/i[1]
    ${create_group}    get text    //*[@id="wrapper"]/h3
    should be equal as strings    ${create_group}  Create a new group
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[1]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[1]/div/div[1]/div[3]
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[2]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[2]/div/div[1]/div[3]
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[3]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[3]/div/div[1]/div[3]
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[4]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[4]/div/div[1]/div[3]
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[5]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[5]/div/div[1]/div[3]
    page should contain element    //*[@id="mat-input-1"]
    element should be visible    //*[@id="mat-input-1"]
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[7]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[7]/div/div[1]/div[3]
    page should contain element    //*[@id="mat-input-3"]
    element should be visible    //*[@id="mat-input-3"]
    click button    //*[@id="wrapper"]/form/button
    ${fill_required_fields}     get text    //*[@id="wrapper"]/form/p
    should be equal as strings    ${fill_required_fields}   Please fill all required fields
    press keys    None      ESC

Eye icon
    [documentation]    Verify that the "Eye" icon can open "Select classes" pop-up

    click element    //*[@id="actions"]/i[2]
    ${select_classes}   get text    //*[@id="mat-dialog-0"]/app-manage-classes/h3
    should be equal as strings    ${select_classes} Select classes
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[1]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[1]
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[2]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[2]
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[3]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[3]
    page should contain element    //*[@id="mat-dialog-0"]/app-manage-classes/div[2]/button
    element should be visible    //*[@id="mat-dialog-0"]/app-manage-classes/div[2]/button
    click button    //*[@id="mat-dialog-0"]/app-manage-classes/div[2]/button
    page should contain element    //*[@class='mat-simple-snackbar ng-star-inserted']/span
    element should be visible    //*[@class='mat-simple-snackbar ng-star-inserted']/span
    ${classes_saved}    get text    //*[@class='mat-simple-snackbar ng-star-inserted']/span
    should be equal as strings    ${classes_saved}  Changes saved successfully

Three vertical dots
    [documentation]    Verify that by clicking on "Three dots" More options can open

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    page should contain element    //*[@id="mat-menu-panel-37"]/div/ul/li[2]
    element should be visible    //*[@id="mat-menu-panel-37"]/div/ul/li[2]
    page should contain element    //*[@id="mat-menu-panel-37"]/div/ul/li[3]
    element should be visible    //*[@id="mat-menu-panel-37"]/div/ul/li[3]
    page should contain element    //*[@id="mat-menu-panel-37"]/div/ul/li[4]
    element should be visible    //*[@id="mat-menu-panel-37"]/div/ul/li[4]

Edit class
    [documentation]    Verify that the Admin can open the pop-up by clicking on "Edit class"

    click element    //*[text()="Edit class"]
    ${edit_class}   get text    //*[@id="wrapper"]/h3
    should be equal as strings    ${edit_class} Update Shani
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[2]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[2]/div/div[1]/div[3]
    page should contain element    //*[@id="mat-select-value-3"]
    element should be visible    //*[@id="mat-select-value-3"]
    page should contain element    //*[@id="mat-select-value-5"]
    element should be visible    //*[@id="mat-select-value-5"]
    page should contain element    //*[@id="mat-select-value-7"]/span
    element should be visible    //*[@id="mat-select-value-7"]/span
    page should contain element    //*[@id="wrapper"]/form/mat-form-field[6]/div/div[1]/div[3]
    element should be visible    //*[@id="wrapper"]/form/mat-form-field[6]/div/div[1]/div[3]
    page should contain element    //*[@id="mat-input-2"]
    element should be visible    //*[@id="mat-input-2"]
    page should contain element    //*[@id="mat-input-3"]
    element should be visible    //*[@id="mat-input-3"]
    page should contain element    //*[@id="wrapper"]/form/button
    element should be visible    //*[@id="wrapper"]/form/button
    click button    //*[@id="wrapper"]/form/button
#    page should contain element    //*[@class='ng-pristine ng-valid ng-touched']/p[@class='ng-star-inserted']
#    element should be visible    [@class='ng-pristine ng-valid ng-touched']/p[@class='ng-star-inserted']

Watch class progress
    [documentation]    Verify that the Admin can open the pop-up by clicking on "watch class progress"

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[text()="watch class progress"]
    page should contain element    //*[@id="header"]/div/h1
    element should be visible    //*[@id="header"]/div/h1
    ${watch_class_progress}     get text    //*[@id="header"]/div/h1
    should be equal as strings    ${watch_class_progress}   Shani
    page should contain element    //*[@id="leftContent"]/h4[1]
    element should be visible    //*[@id="leftContent"]/h4[1]
    ${timeline}     get text    //*[@id="leftContent"]/h4[1]
    should be equal as strings    ${timeline}   Timeline
    page should contain element    //*[@id="grades-distribution-header"]
    element should be visible    //*[@id="grades-distribution-header"]
    ${grades_distribution}  get text    //*[@id="grades-distribution-header"]
    should be equal as strings    ${grades_distribution}    Grades distribution
    page should contain element    //*[@id="leftContent"]/h4[2]
    element should be visible    //*[@id="leftContent"]/h4[2]
    ${all_lessons}  get text    //*[@id="leftContent"]/h4[2]
    should be equal as strings    ${all_lessons}    All Lessons
    page should contain element    //*[@id="inner"]/h4[2]
    element should be visible    //*[@id="inner"]/h4[2]
    ${assignments_completed}    get text    //*[@id="inner"]/h4[2]
    should contain    ${assignments_completed}  Assignments completed
    page should contain element    //*[@id="inner"]/h4[3]
    element should be visible    //*[@id="inner"]/h4[3]
    ${most_selected_words}  get text    //*[@id="inner"]/h4[3]
    should be equal as strings    ${most_selected_words}    Most Selected Words
    page should contain element    //*[@id="wrapper"]/button
    element should be visible    //*[@id="wrapper"]/button
    click button    //*[@id="wrapper"]/button
    page should not contain    //*[@id="header"]/div/h1

Content policy
    [documentation]    Verify that the Admin can open the pop-up by clicking on "content policy"

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    page should contain element    //*[text()="Content policy"]
    element should be visible    //*[text()="Content policy"]
    click element    //*[text()="Content policy"]




*** Keywords ***
