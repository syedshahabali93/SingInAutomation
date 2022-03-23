*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Classes page/functionality.
Variables    ../../Locators/Classes.py

*** Keywords ***

Classes View Section
    [documentation]    Verify classes page exist and user is able to open classes and perform actions

    press keys    None      ESC
    Classes
    click button    ${ClassesCloseButtonLocator}
    ${classes}  get text    ${ClassesHeadingTextLocator}
    should be equal as strings    ${classes}    ${classes_heading_text}
    page should contain element    ${ClassesSideMenuAllButtonLocator}
    element should be visible    ${ClassesSideMenuAllButtonLocator}
    page should contain element    ${ClassesAllClassesTableHeadingLocator}
    element should be visible    ${ClassesAllClassesTableHeadingLocator}
    page should contain element    ${ClassesPlusButtonLocator}
    element should be visible    ${ClassesPlusButtonLocator}
    page should contain element    ${ClassesEyeButtonLocator}
    element should be visible    ${ClassesEyeButtonLocator}

Show me how button
    [documentation]    Verify that the Admin can open the "Show me how pop up"

    page should contain element    ${ClassesShowMeHowLocator}
    element should be visible    ${ClassesShowMeHowLocator}
    click element    ${ClassesShowMeHowLocator}
    ${manage_groups}    get text    ${ClassesShowMeHowPopupHeadingLocator}
    should be equal as strings    ${manage_groups}  ${show_me_how_popup_heading}
    ${classes_schools}    get text    ${ClassesShowMeHowPopupSubHeadingFirstLocator}
    should be equal as strings    ${classes_schools}  ${show_me_how_popup_heading_second}
    ${managing_students}    get text    ${ClassesShowMeHowPopupSubHeadingSecondLocator}
    should be equal as strings    ${managing_students}  ${show_me_how_popup_heading_third}
    page should contain element    ${ClassesShowMeHowPopupCloseButtonLocator}
    element should be visible    ${ClassesShowMeHowPopupCloseButtonLocator}
    click element    ${ClassesShowMeHowPopupCloseButtonLocator}

All classes section
    [documentation]    Verify that the Admin can see the all classes

    page should contain element    ${ClassesAllClassesTableHashColumnLocator}
    element should be visible    ${ClassesAllClassesTableHashColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableHashColumnLocator}
#    should be equal as strings    ${hash_text}      ${classes_table_first_column}
    page should contain element    ${ClassesAllClassesTableNameColumnLocator}
    element should be visible    ${ClassesAllClassesTableNameColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableNameColumnLocator}
    should be equal as strings    ${hash_text}  ${classes_table_second_column}
    page should contain element    ${ClassesAllClassesTableStudentsColumnLocator}
    element should be visible    ${ClassesAllClassesTableStudentsColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableStudentsColumnLocator}
    should be equal as strings    ${hash_text}  ${classes_table_third_column}
    page should contain element    ${ClassesAllClassesTableWordsSentColumnLocator}
    element should be visible    ${ClassesAllClassesTableWordsSentColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableWordsSentColumnLocator}
    should be equal as strings    ${hash_text}  ${classes_table_fourth_column}
    page should contain element    ${ClassesAllClassesTableSongHearedColumnLocator}
    element should be visible    ${ClassesAllClassesTableSongHearedColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableSongHearedColumnLocator}
    should be equal as strings    ${hash_text}  ${classes_table_fifth_column}
    page should contain element    ${ClassesAllClassesTableQuizzesAnsweredColumnLocator}
    element should be visible    ${ClassesAllClassesTableQuizzesAnsweredColumnLocator}
    ${hash_text}    get text    ${ClassesAllClassesTableQuizzesAnsweredColumnLocator}
    should be equal as strings    ${hash_text}  ${classes_table_sixth_column}
    page should contain element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    element should be visible    ${ClassesAllClassesTableThreeDotsColumnLocator}

+ button
    [documentation]    Verify that the "+" sign can open "Create a new group" pop-up

    click element    ${ClassesPlusButtonLocator}
    ${create_group}    get text    ${ClassPlusButtonCreateNewGroupHeadingLocator}
    should be equal as strings    ${create_group}   ${create_new_group_popup_heading_text}
    page should contain element    ${ClassPlusButtonCreateNewGroupFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewGroupFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewClassFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewClassFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewGrammarLevelFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewGrammarLevelFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewDefaultLanguageFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewDefaultLanguageFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewParentContainerFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewParentContainerFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewIDMOrganizationIDFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewIDMOrganizationIDFieldLocator}
    press keys    None      PAGE_DOWN
    page should contain element    ${ClassPlusButtonCreateNewAllowedUsersCountFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewAllowedUsersCountFieldLocator}
    page should contain element    ${ClassPlusButtonCreateNewExpirationFieldLocator}
    element should be visible    ${ClassPlusButtonCreateNewExpirationFieldLocator}
    click element    ${ClassPlusButtonCreateNewSaveButtonLocator}
    ${fillRequiredFields}     get text    ${ClassPlusButtonCreateNewErrorMessageLocator}
    should be equal as strings    ${fill_required_fields}   ${fill_required_fields}
    press keys    None      ESC

Eye button
    [documentation]    Verify that the "Eye" icon can open "Select classes" pop-up

    click element    ${ClassesEyeButtonLocator}
    ${selectClasses}   get text    ${ClassEyeButtonPopupHeadingLocator}
    should be equal as strings    ${selectClasses}     ${select_classes}
    page should contain element    ${ClassEyeButtonPopupTableFirstColumnLocator}
    element should be visible    ${ClassEyeButtonPopupTableFirstColumnLocator}
    page should contain element    ${ClassEyeButtonPopupTableSecondColumnLocator}
    element should be visible    ${ClassEyeButtonPopupTableSecondColumnLocator}
    page should contain element    ${ClassEyeButtonPopupTableThirdColumnLocator}
    element should be visible    ${ClassEyeButtonPopupTableThirdColumnLocator}
    page should contain element    ${ClassEyeButtonPopupSaveButtonLocator}
    element should be visible    ${ClassEyeButtonPopupSaveButtonLocator}
    set selenium speed    0.1
    click button    ${ClassEyeButtonPopupSaveButtonLocator}
    page should contain element    ${ClassEyeButtonPopupSuccessMessageLocator}
    element should be visible    ${ClassEyeButtonPopupSuccessMessageLocator}
    ${classes_saved}    get text    ${ClassEyeButtonPopupSuccessMessageLocator}
    should be equal as strings    ${classes_saved}  ${changes_saved_success_message}
    set selenium speed    1

Three vertical dots
    [documentation]    Verify that by clicking on "Three dots" More options can open

    page should contain element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    element should be visible    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    page should contain element    ${ClassThreeDotsPopupWatchClassProgressLocator}
    element should be visible    ${ClassThreeDotsPopupWatchClassProgressLocator}
    page should contain element    ${ClassThreeDotsPopupContentPolicyLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyLocator}
    page should contain element    ${ClassThreeDotsPopupRemoveGroupLocator}
    element should be visible    ${ClassThreeDotsPopupRemoveGroupLocator}

In three vertical dots - Edit class
    [documentation]    Verify that the Admin can open the pop-up by clicking on "Edit class"

    click element    //*[text()="Edit class"]
    ${editClass}   get text    ${ClassThreeDotsEditClassPopupHeadingLocator}
    should be equal as strings    ${editClass}     ${edit_class_heading}
    page should contain element    ${ClassThreeDotsEditClassPopupGroupNameFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupGroupNameFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupGroupTypeFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupGroupTypeFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupDefaultGrammarLevelFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupDefaultGrammarLevelFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupDefaultLanguageFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupDefaultLanguageFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupParentContainerFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupParentContainerFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupIDMOrganizationIDFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupIDMOrganizationIDFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupAllowedUsersCountFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupAllowedUsersCountFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupExpirationDateFieldLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupExpirationDateFieldLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupUpdateButtonLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupUpdateButtonLocator}
    set selenium speed    0.1
    click button    ${ClassThreeDotsEditClassPopupUpdateButtonLocator}
    page should contain element    ${ClassThreeDotsEditClassPopupUpdatedSuccessMessageLocator}
    element should be visible    ${ClassThreeDotsEditClassPopupUpdatedSuccessMessageLocator}
    ${success_text}     get text    ${ClassThreeDotsEditClassPopupUpdatedSuccessMessageLocator}
    should be equal as strings    ${success_text}   ${group_updated_success_message}
    set selenium speed    1

In three vertical dots - Watch class progress
    [documentation]    Verify that the Admin can open the pop-up by clicking on "watch class progress"

    page should contain element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    element should be visible    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassThreeDotsPopupWatchClassProgressLocator}
    page should contain element    ${ClassThreeDotsWatchClassProgressHeadingLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressHeadingLocator}
    ${watch_class_progress}     get text    ${ClassThreeDotsWatchClassProgressHeadingLocator}
    should be equal as strings    ${watch_class_progress}   ${student_name}
    page should contain element    ${ClassThreeDotsWatchClassProgressTimelineTextLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressTimelineTextLocator}
    ${timeline}     get text    ${ClassThreeDotsWatchClassProgressTimelineTextLocator}
    should be equal as strings    ${timeline}   ${class_progress_timeline_text}
    page should contain element    ${ClassThreeDotsWatchClassProgressGradesDistributionTextLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressGradesDistributionTextLocator}
    ${grades_distribution}  get text    ${ClassThreeDotsWatchClassProgressGradesDistributionTextLocator}
    should be equal as strings    ${grades_distribution}    ${class_progress_grades_distribution_text}
    page should contain element    ${ClassThreeDotsWatchClassProgressAllLessonsTextLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressAllLessonsTextLocator}
    ${all_lessons}  get text    ${ClassThreeDotsWatchClassProgressAllLessonsTextLocator}
    should be equal as strings    ${all_lessons}    ${class_progress_all_lessons_text}
    page should contain element    ${ClassThreeDotsWatchClassProgressAssignmentsCompletedTextLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressAssignmentsCompletedTextLocator}
    ${assignments_completed}    get text    ${ClassThreeDotsWatchClassProgressAssignmentsCompletedTextLocator}
    should contain    ${assignments_completed}      ${class_progress_assignments_completed_text}
    page should contain element    ${ClassThreeDotsWatchClassProgressMostSelectedWordsTextLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressMostSelectedWordsTextLocator}
    ${most_selected_words}  get text    ${ClassThreeDotsWatchClassProgressMostSelectedWordsTextLocator}
    should be equal as strings    ${most_selected_words}    ${class_progress_most_selected_words_text}
    page should contain element    ${ClassThreeDotsWatchClassProgressCloseButtonLocator}
    element should be visible    ${ClassThreeDotsWatchClassProgressCloseButtonLocator}
    click button    ${ClassThreeDotsWatchClassProgressCloseButtonLocator}
    page should not contain    ${ClassThreeDotsWatchClassProgressHeadingLocator}

In three vertical dots - Content policy
    [documentation]    Verify that the Admin can open the pop-up by clicking on "content policy"

    page should contain element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    element should be visible    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    page should contain element    ${ClassThreeDotsPopupContentPolicyLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyLocator}
    click element    ${ClassThreeDotsPopupContentPolicyLocator}
    ${content_policy}   get text    ${ClassThreeDotsPopupContentPolicyPopupHeadingLocator}
    should be equal as strings    ${content_policy}     ${content_policy_heading}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupAbuseAndViolenceBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupAbuseAndViolenceBarHeadingTextLocator}
    ${abuse_violence}   get text    ${ClassThreeDotsPopupContentPolicyPopupAbuseAndViolenceBarHeadingTextLocator}
    should be equal as strings    ${abuse_violence}     ${row_one_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupCoarseLanguageBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupCoarseLanguageBarHeadingTextLocator}
    ${coarse_language}  get text    ${ClassThreeDotsPopupContentPolicyPopupCoarseLanguageBarHeadingTextLocator}
    should be equal as strings    ${coarse_language}    ${row_two_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupGamblingBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupGamblingBarHeadingTextLocator}
    ${gambling}     get text    ${ClassThreeDotsPopupContentPolicyPopupGamblingBarHeadingTextLocator}
    should be equal as strings    ${gambling}   ${row_three_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupGenderIdentityAndSexualBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupGenderIdentityAndSexualBarHeadingTextLocator}
    ${gender_identity}  get text    ${ClassThreeDotsPopupContentPolicyPopupGenderIdentityAndSexualBarHeadingTextLocator}
    should be equal as strings    ${gender_identity}    ${row_four_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupPoliticalBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupPoliticalBarHeadingTextLocator}
    ${political}    get text    ${ClassThreeDotsPopupContentPolicyPopupPoliticalBarHeadingTextLocator}
    should be equal as strings    ${political}  ${row_five_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupRaceAndEthnicityBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupRaceAndEthnicityBarHeadingTextLocator}
    ${race_ethnicity}   get text    ${ClassThreeDotsPopupContentPolicyPopupRaceAndEthnicityBarHeadingTextLocator}
    should be equal as strings    ${race_ethnicity}     ${row_six_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupReligionBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupReligionBarHeadingTextLocator}
    ${religion}     get text    ${ClassThreeDotsPopupContentPolicyPopupReligionBarHeadingTextLocator}
    should be equal as strings    ${religion}   ${row_seven_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupSexualBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupSexualBarHeadingTextLocator}
    ${sexual}   get text    ${ClassThreeDotsPopupContentPolicyPopupSexualBarHeadingTextLocator}
    should be equal as strings    ${sexual}     ${row_eight_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupSubstanceUseBarHeadingTextLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupSubstanceUseBarHeadingTextLocator}
    ${substance_use}    get text    ${ClassThreeDotsPopupContentPolicyPopupSubstanceUseBarHeadingTextLocator}
    should be equal as strings    ${substance_use}  ${row_nine_text}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupCancelButtonLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupCancelButtonLocator}
    page should contain element    ${ClassThreeDotsPopupContentPolicyPopupSaveButtonLocator}
    element should be visible    ${ClassThreeDotsPopupContentPolicyPopupSaveButtonLocator}
    press keys    None      ESC

In three vertical dots - Remove Group
    [documentation]    Verify that the Admin can open the pop-up by clicking on "Remove Group"

    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassThreeDotsPopupRemoveGroupLocator}
    page should contain element    ${ClassThreeDotsPopupRemoveGroupHeadingLocator}
    element should be visible    ${ClassThreeDotsPopupRemoveGroupHeadingLocator}
    ${removeGroupConfirmationMessage}    get text    ${ClassThreeDotsPopupRemoveGroupHeadingLocator}
    should be equal as strings    ${removeGroupConfirmationMessage}     ${remove_group_confirmation_message}
    page should contain element    ${ClassThreeDotsPopupRemoveGroupRemoveButtonLocator}
    element should be visible    ${ClassThreeDotsPopupRemoveGroupRemoveButtonLocator}
    page should contain element    ${ClassThreeDotsPopupRemoveGroupCancelButtonLocator}
    element should be visible    ${ClassThreeDotsPopupRemoveGroupCancelButtonLocator}
    press keys    None      ESC

In three vertical dots - Remove Group - Test Cancel button
    [documentation]    Verify that Remove Group pop-up closes on clicking "Cancel"

    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassThreeDotsPopupRemoveGroupLocator}
    page should contain element    ${ClassThreeDotsPopupRemoveGroupCancelButtonLocator}
    click element    ${ClassThreeDotsPopupRemoveGroupCancelButtonLocator}
    page should not contain element    ${ClassThreeDotsPopupRemoveGroupHeadingLocator}
    element should not be visible    ${ClassThreeDotsPopupRemoveGroupHeadingLocator}

In three vertical dots - Remove Group - Test Remove button
    [documentation]    Verify that Remove Group pop-up closes on clicking "Remove"

    click element    ${ClassesAllClassesTableThreeDotsColumnLocator}
    click element    ${ClassThreeDotsPopupRemoveGroupLocator}
#    set selenium speed    0.1
    page should contain element    ${ClassThreeDotsPopupRemoveGroupRemoveButtonLocator}
    click button    ${ClassThreeDotsPopupRemoveGroupRemoveButtonLocator}
#    page should contain element    ${ClassThreeDotsPopupRemoveGroupRemovedSuccessMessageLocator}
#    element should be visible    ${ClassThreeDotsPopupRemoveGroupRemovedSuccessMessageLocator}
#    set selenium speed    1

*** Variables ***
${classes_heading_text}    My classes
${edit_class_heading}   Update shehdi eight
${student_name}     shehdi eight
${select_classes}    Select classes
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
${class_progress_timeline_text}     Timeline
${class_progress_grades_distribution_text}     Grades distribution
${class_progress_all_lessons_text}     All Lessons
${class_progress_assignments_completed_text}    Assignments completed
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
${create_new_group_popup_heading_text}      Create a new group
${fill_required_fields}    Please fill all required fields

