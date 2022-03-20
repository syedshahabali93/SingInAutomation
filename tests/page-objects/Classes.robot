*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Classes page/functionality.

*** Keywords ***

Classes View Section
    [documentation]    Verify classes page exist and user is able to open classes and perform actions

    press keys    None      ESC
    Classes
    click button    //*[contains(text(), 'Close')]
    ${classes}  get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${classes}    ${classes_heading_text}
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
    should be equal as strings    ${manage_groups}  ${show_me_how_popup_heading}
    ${classes_schools}    get text    //*[@id="wrapper"]/h3[1]
    should be equal as strings    ${classes_schools}  ${show_me_how_popup_heading_second}
    ${managing_students}    get text    //*[@id="wrapper"]/h3[2]
    should be equal as strings    ${managing_students}  ${show_me_how_popup_heading_third}
    page should contain element    //*[@id="wrapper"]/button
    element should be visible    //*[@id="wrapper"]/button
    click element    //*[@id="wrapper"]/button

All classes section
    [documentation]    Verify that the Admin can see the all classes

    page should contain element    //*[@id="content"]/table/tr[1]/th[1]
    element should be visible    //*[@id="content"]/table/tr[1]/th[1]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[1]
#    should be equal as strings    ${hash_text}      ${classes_table_first_column}
    page should contain element    //*[@id="content"]/table/tr[1]/th[2]
    element should be visible    //*[@id="content"]/table/tr[1]/th[2]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[2]
    should be equal as strings    ${hash_text}  ${classes_table_second_column}
    page should contain element    //*[@id="content"]/table/tr[1]/th[3]
    element should be visible    //*[@id="content"]/table/tr[1]/th[3]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[3]
    should be equal as strings    ${hash_text}  ${classes_table_third_column}
    page should contain element    //*[@id="content"]/table/tr[1]/th[4]
    element should be visible    //*[@id="content"]/table/tr[1]/th[4]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[4]
    should be equal as strings    ${hash_text}  ${classes_table_fourth_column}
    page should contain element    //*[@id="content"]/table/tr[1]/th[5]
    element should be visible    //*[@id="content"]/table/tr[1]/th[5]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[5]
    should be equal as strings    ${hash_text}  ${classes_table_fifth_column}
    page should contain element    //*[@id="content"]/table/tr[1]/th[6]
    element should be visible    //*[@id="content"]/table/tr[1]/th[6]
    ${hash_text}    get text    //*[@id="content"]/table/tr[1]/th[6]
    should be equal as strings    ${hash_text}  ${classes_table_sixth_column}
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
    should be equal as strings    ${classes_saved}  ${changes_saved_success_message}
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
    should be equal as strings    ${success_text}   ${group_updated_success_message}
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
    should be equal as strings    ${watch_class_progress}   ${student_name}
    page should contain element    //*[@id="leftContent"]/h4[1]
    element should be visible    //*[@id="leftContent"]/h4[1]
    ${timeline}     get text    //*[@id="leftContent"]/h4[1]
    should be equal as strings    ${timeline}   ${class_progress_timeline_text}
    page should contain element    //*[@id="grades-distribution-header"]
    element should be visible    //*[@id="grades-distribution-header"]
    ${grades_distribution}  get text    //*[@id="grades-distribution-header"]
    should be equal as strings    ${grades_distribution}    ${class_progress_grades_distribution_text}}
    page should contain element    //*[@id="leftContent"]/h4[2]
    element should be visible    //*[@id="leftContent"]/h4[2]
    ${all_lessons}  get text    //*[@id="leftContent"]/h4[2]
    should be equal as strings    ${all_lessons}    ${class_progress_all_lessons_text}
    page should contain element    //*[@id="inner"]/h4[2]
    element should be visible    //*[@id="inner"]/h4[2]
    ${assignments_completed}    get text    //*[@id="inner"]/h4[2]
    should contain    ${assignments_completed}      ${class_progress_assignments_completed_text}
    page should contain element    //*[@id="inner"]/h4[3]
    element should be visible    //*[@id="inner"]/h4[3]
    ${most_selected_words}  get text    //*[@id="inner"]/h4[3]
    should be equal as strings    ${most_selected_words}    ${class_progress_most_selected_words_text}
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
    should be equal as strings    ${content_policy}     ${content_policy_heading}
    page should contain element    //*[text()="Abuse and Violence"]
    element should be visible    //*[text()="Abuse and Violence"]
    ${abuse_violence}   get text    //*[text()="Abuse and Violence"]
    should be equal as strings    ${abuse_violence}     ${row_one_text}
    page should contain element    //*[@id="wrapper"]/div[2]/p
    element should be visible    //*[@id="wrapper"]/div[2]/p
    ${coarse_language}  get text    //*[@id="wrapper"]/div[2]/p
    should be equal as strings    ${coarse_language}    ${row_two_text}
    page should contain element    //*[@id="wrapper"]/div[3]/p
    element should be visible    //*[@id="wrapper"]/div[3]/p
    ${gambling}     get text    //*[@id="wrapper"]/div[3]/p
    should be equal as strings    ${gambling}   ${row_three_text}
    page should contain element    //*[@id="wrapper"]/div[4]/p
    element should be visible    //*[@id="wrapper"]/div[4]/p
    ${gender_identity}  get text    //*[@id="wrapper"]/div[4]/p
    should be equal as strings    ${gender_identity}    ${row_four_text}
    page should contain element    //*[@id="wrapper"]/div[5]/p
    element should be visible    //*[@id="wrapper"]/div[5]/p
    ${political}    get text    //*[@id="wrapper"]/div[5]/p
    should be equal as strings    ${political}  ${row_five_text}
    page should contain element    //*[@id="wrapper"]/div[6]/p
    element should be visible    //*[@id="wrapper"]/div[6]/p
    ${race_ethnicity}   get text    //*[@id="wrapper"]/div[6]/p
    should be equal as strings    ${race_ethnicity}     ${row_six_text}
    page should contain element    //*[@id="wrapper"]/div[7]/p
    element should be visible    //*[@id="wrapper"]/div[7]/p
    ${religion}     get text    //*[@id="wrapper"]/div[7]/p
    should be equal as strings    ${religion}   ${row_seven_text}
    page should contain element    //*[@id="wrapper"]/div[8]/p
    element should be visible    //*[@id="wrapper"]/div[8]/p
    ${sexual}   get text    //*[@id="wrapper"]/div[8]/p
    should be equal as strings    ${sexual}     ${row_eight_text}
    page should contain element    //*[@id="wrapper"]/div[9]/p
    element should be visible    //*[@id="wrapper"]/div[9]/p
    ${substance_use}    get text    //*[@id="wrapper"]/div[9]/p
    should be equal as strings    ${substance_use}  ${row_nine_text}
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
    ${removeGroupConfirmationMessage}    get text    //*[text()="Are you sure you want to delete the group"]
    should be equal as strings    ${removeGroupConfirmationMessage}     ${remove_group_confirmation_message}
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

*** Variables ***
${classes_heading_text}    My classes
${show_me_how_popup_heading}    How to manage groups?
${show_me_how_popup_heading_second}    Classes and schools
${show_me_how_popup_heading_third}      Managing students
${classes_table_first_column}       #
${classes_table_second_column}      Name
${classes_table_third_column}   Students
${classes_table_fourth_column}  Words sent
${classes_table_fifth_column}   Song heared
${classes_table_sixth_column}   Quizzes Answered
${changes_saved_success_message}     Changes saved successfully
${group_updated_success_message}     Group updated successfully.
${student_name}     shahid
${class_progress_timeline_text}     Timeline
${class_progress_grades_distribution_text}     Grades distribution
${class_progress_all_lessons_text}     All Lessons
${class_progress_assignments_completed_text}}    Assignments completed
${class_progress_most_selected_words_text}     Most Selected Words
${content_policy_heading}   Edit what your students can see
${row_one_text}     Abuse and Violence
${row_two_text}     Coarse Language
${row_three_text}   Gambling
${row_four_text}    Gender identity and Sexual Orientation
${row_five_text}    Political
${row_six_text}     Race and ethnicity
${row_seven_text}   Religion
${row_eight_text}   Sexual
${row_nine_text}    Substance Use
${remove_group_confirmation_message}    Are you sure you want to delete the group