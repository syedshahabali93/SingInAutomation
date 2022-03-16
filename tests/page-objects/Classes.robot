*** Settings ***
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Classes page/functionality.

*** Keywords ***

Classes View Section
    [documentation]    Verify classes page exist and user is able to open classes and perform actions

    press keys    None      ESC
    click element    //*[@id="sidenav"]/ul/li[2]/p
    click button    //*[contains(text(), 'Close')]
    ${classes}  get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${classes}    My classes
    page should contain element    //*[@id="menu-col"]/li[1]/p
    element should be visible    //*[@id="menu-col"]/li[1]/p
    page should contain element    //*[@id="content"]/div/div[1]/h2
    element should be visible    //*[@id="content"]/div/div[1]/h2
    page should contain element    //*[@id="actions"]/i[1]
    element should be visible    //*[@id="actions"]/i[1]
    page should contain element    //*[@id="actions"]/i[2]
    element should be visible    //*[@id="actions"]/i[2]

Show me how button
    [documentation]    Verify that the Admin can open the "Show me how pop up"

    page should contain element    //*[@id="info"]
    element should be visible    //*[@id="info"]
    click element    //*[@id="info"]
    ${manage_groups}    get text    //*[@id="wrapper"]/h2
    should be equal as strings    ${manage_groups}  How to manage groups?
    ${classes_schools}    get text    //*[@id="wrapper"]/h3[1]
    should be equal as strings    ${classes_schools}  Classes and schools
    ${managing_students}    get text    //*[@id="wrapper"]/h3[2]
    should be equal as strings    ${managing_students}  Managing students
    page should contain element    //*[@id="wrapper"]/button
    element should be visible    //*[@id="wrapper"]/button
    click element    //*[@id="wrapper"]/button

All classes section
    [documentation]    Verify that the Admin can see the all classes

    page should contain element    //*[@id="content"]/table/tr[1]/th[1]
    element should be visible    //*[@id="content"]/table/tr[1]/th[1]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[1]
#    should be equal as strings    ${hash_text}      #
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

+ button
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

Eye button
    [documentation]    Verify that the "Eye" icon can open "Select classes" pop-up

    click element    //*[@id="actions"]/i[2]
    ${select_classes}   get text    //*[text()="Select classes"]
    should be equal as strings    ${select_classes}     Select classes
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[1]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[1]
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[2]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[2]
    page should contain element    //*[@id="table-wrapper"]/table/tr[1]/th[3]
    element should be visible    //*[@id="table-wrapper"]/table/tr[1]/th[3]
    page should contain element    //*[text()="Save"]
    element should be visible    //*[text()="Save"]
    set selenium speed    0.1
    click button    //*[text()="Save"]
    page should contain element    //*[text()="Changes saved successfully"]
    element should be visible    //*[text()="Changes saved successfully"]
    ${classes_saved}    get text    //*[text()="Changes saved successfully"]
    should be equal as strings    ${classes_saved}  Changes saved successfully
    set selenium speed    1

Three vertical dots
    [documentation]    Verify that by clicking on "Three dots" More options can open

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    page should contain element    //*[text()="watch class progress"]
    element should be visible    //*[text()="watch class progress"]
    page should contain element    //*[text()="Content policy"]
    element should be visible    //*[text()="Content policy"]
    page should contain element    //*[text()="Remove group"]
    element should be visible    //*[text()="Remove group"]

In three vertical dots - Edit class
    [documentation]    Verify that the Admin can open the pop-up by clicking on "Edit class"

    click element    //*[text()="Edit class"]
    ${edit_class}   get text    //*[@id="wrapper"]/h3
    should be equal as strings    ${edit_class}     Update shahid
    page should contain element    //*[text()="Group name"]
    element should be visible    //*[text()="Group name"]
    page should contain element    //*[text()="Group type"]
    element should be visible    //*[text()="Group type"]
    page should contain element    //*[text()="Default grammar level"]
    element should be visible    //*[text()="Default grammar level"]
    page should contain element    //*[text()="Default language"]
    element should be visible    //*[text()="Default language"]
    page should contain element    //*[text()="Parent container"]
    element should be visible    //*[text()="Parent container"]
    page should contain element    //*[text()="IDM organization id"]
    element should be visible    //*[text()="IDM organization id"]
    page should contain element    //*[text()="Allowed users count"]
    element should be visible    //*[text()="Allowed users count"]
    page should contain element    //*[text()="Expiration date"]
    element should be visible    //*[text()="Expiration date"]
    page should contain element    //*[@id="wrapper"]/form/button
    element should be visible    //*[@id="wrapper"]/form/button
    set selenium speed    0.1
    click button    //*[@id="wrapper"]/form/button
    page should contain element    //*[text()="Group updated successfully."]
    element should be visible    //*[text()="Group updated successfully."]
    ${success_text}     get text    //*[text()="Group updated successfully."]
    should be equal as strings    ${success_text}   Group updated successfully.
    set selenium speed    1

In three vertical dots - Watch class progress
    [documentation]    Verify that the Admin can open the pop-up by clicking on "watch class progress"

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[text()="watch class progress"]
    page should contain element    //*[@id="header"]/div/h1
    element should be visible    //*[@id="header"]/div/h1
    ${watch_class_progress}     get text    //*[@id="header"]/div/h1
    should be equal as strings    ${watch_class_progress}   shahid
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

In three vertical dots - Content policy
    [documentation]    Verify that the Admin can open the pop-up by clicking on "content policy"

    page should contain element    //*[@id="content"]/table/tr[2]/td[7]
    element should be visible    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[@id="content"]/table/tr[2]/td[7]
    page should contain element    //*[text()="Content policy"]
    element should be visible    //*[text()="Content policy"]
    click element    //*[text()="Content policy"]
    ${content_policy}   get text    //*[@id="wrapper"]/h3
    should be equal as strings    ${content_policy}     Edit what your students can see
    page should contain element    //*[text()="Abuse and Violence"]
    element should be visible    //*[text()="Abuse and Violence"]
    ${abuse_violence}   get text    //*[text()="Abuse and Violence"]
    should be equal as strings    ${abuse_violence}     Abuse and Violence
    page should contain element    //*[@id="wrapper"]/div[2]/p
    element should be visible    //*[@id="wrapper"]/div[2]/p
    ${coarse_language}  get text    //*[@id="wrapper"]/div[2]/p
    should be equal as strings    ${coarse_language}    Coarse Language
    page should contain element    //*[@id="wrapper"]/div[3]/p
    element should be visible    //*[@id="wrapper"]/div[3]/p
    ${gambling}     get text    //*[@id="wrapper"]/div[3]/p
    should be equal as strings    ${gambling}   Gambling
    page should contain element    //*[@id="wrapper"]/div[4]/p
    element should be visible    //*[@id="wrapper"]/div[4]/p
    ${gender_identity}  get text    //*[@id="wrapper"]/div[4]/p
    should be equal as strings    ${gender_identity}    Gender identity and Sexual Orientation
    page should contain element    //*[@id="wrapper"]/div[5]/p
    element should be visible    //*[@id="wrapper"]/div[5]/p
    ${political}    get text    //*[@id="wrapper"]/div[5]/p
    should be equal as strings    ${political}  Political
    page should contain element    //*[@id="wrapper"]/div[6]/p
    element should be visible    //*[@id="wrapper"]/div[6]/p
    ${race_ethnicity}   get text    //*[@id="wrapper"]/div[6]/p
    should be equal as strings    ${race_ethnicity}     Race and ethnicity
    page should contain element    //*[@id="wrapper"]/div[7]/p
    element should be visible    //*[@id="wrapper"]/div[7]/p
    ${religion}     get text    //*[@id="wrapper"]/div[7]/p
    should be equal as strings    ${religion}   Religion
    page should contain element    //*[@id="wrapper"]/div[8]/p
    element should be visible    //*[@id="wrapper"]/div[8]/p
    ${sexual}   get text    //*[@id="wrapper"]/div[8]/p
    should be equal as strings    ${sexual}     Sexual
    page should contain element    //*[@id="wrapper"]/div[9]/p
    element should be visible    //*[@id="wrapper"]/div[9]/p
    ${substance_use}    get text    //*[@id="wrapper"]/div[9]/p
    should be equal as strings    ${substance_use}  Substance Use
    page should contain element    //*[@id="wrapper"]/div[10]/span
    element should be visible    //*[@id="wrapper"]/div[10]/span
    page should contain element    //*[@id="wrapper"]/div[10]/button
    element should be visible    //*[@id="wrapper"]/div[10]/button
    press keys    None      ESC

In three vertical dots - Remove Group
    [documentation]    Verify that the Admin can open the pop-up by clicking on "Remove Group"

    click element    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[text()="Remove group"]
    page should contain element    //*[text()="Are you sure you want to delete the group"]
    element should be visible    //*[text()="Are you sure you want to delete the group"]
    ${remove_group_confirmation_message}    get text    //*[text()="Are you sure you want to delete the group"]
    should be equal as strings    ${remove_group_confirmation_message}  Are you sure you want to delete the group
    page should contain element    //*[text()="Remove"]
    element should be visible    //*[text()="Remove"]
    page should contain element    //*[text()="Cancel"]
    element should be visible    //*[text()="Cancel"]
    press keys    None      ESC

In three vertical dots - Remove Group - Test Cancel button
    [documentation]    Verify that Remove Group pop-up closes on clicking "Cancel"

    click element    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[text()="Remove group"]
    page should contain element    //*[text()="Cancel"]
    click element    //*[text()="Cancel"]
    page should not contain element    //*[text()="Are you sure you want to delete the group"]
    element should not be visible    //*[text()="Are you sure you want to delete the group"]

In three vertical dots - Remove Group - Test Remove button
    [documentation]    Verify that Remove Group pop-up closes on clicking "Remove"

    click element    //*[@id="content"]/table/tr[2]/td[7]
    click element    //*[text()="Remove group"]
    set selenium speed    0.1
    page should contain element    //*[text()="Remove"]
    click button    //*[text()="Remove"]
    page should contain element    //*[text()="Group removed successfully"]
    element should be visible    //*[text()="Group removed successfully"]
    set selenium speed    1
