*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Assignments page/functionality.
Variables    ../../Locators/Assignments.py

*** Keywords ***
Assignments View Section
    [documentation]    Verify assignments page exists and user is able to view assignments and perform actions

    Assignments
    ${assignmentsHeadingText}   get text    ${AssignmentsHeadingLocator}
    should be equal as strings    ${assignmentsHeadingText}     ${assignments_heading_text}
    page should contain element    ${AssignmentsAllButtonLocator}
    element should be visible    ${AssignmentsAllButtonLocator}
    page should contain element    ${AssignmentsCreateNewButtonLocator}
    element should be visible    ${AssignmentsCreateNewButtonLocator}
#    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[1]
#    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[1]
    page should contain element    ${AssignmentsDescriptionColumnHeadingLocator}
    element should be visible    ${AssignmentsDescriptionColumnHeadingLocator}
    ${description}  get text    ${AssignmentsDescriptionColumnHeadingLocator}
    should be equal as strings    ${description}    ${table_first_column_text}
    page should contain element    ${AssignmentsTypeColumnHeadingLocator}
    element should be visible    ${AssignmentsTypeColumnHeadingLocator}
    ${type}     get text    ${AssignmentsTypeColumnHeadingLocator}
    should be equal as strings    ${type}   ${table_second_column_text}
    page should contain element    ${AssignmentsSentColumnHeadingLocator}
    element should be visible    ${AssignmentsSentColumnHeadingLocator}
    ${sent}     get text    ${AssignmentsSentColumnHeadingLocator}
    should be equal as strings    ${sent}   ${table_third_column_text}
    page should contain element    ${AssignmentsSentToColumnHeadingLocator}
    element should be visible    ${AssignmentsSentToColumnHeadingLocator}
    ${sent_to}  get text    ${AssignmentsSentToColumnHeadingLocator}
    should be equal as strings    ${sent_to}    ${table_fourth_column_text}
    page should contain element    ${AssignmentsOpenedColumnHeadingLocator}
    element should be visible    ${AssignmentsOpenedColumnHeadingLocator}
    ${opened}   get text    ${AssignmentsOpenedColumnHeadingLocator}
    should be equal as strings    ${opened}     ${table_fifth_column_text}

Create New - Assignment
    [documentation]    Testing create new button functionality on Assignments page

    click button        ${AssignmentsCreateNewButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendSongButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendWordButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendWordButtonLocator}

Send Song - Assignment
    [documentation]    Verify send song fields are present and functionality is working correctly

    page should contain element    ${AssignmentsCreateNewSendSongButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongButtonLocator}
    click element    ${AssignmentsCreateNewSendSongButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendSongTrackFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendSongTrackFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendSongGroupFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendSongGroupFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendSongNotesFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendSongNotesFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendSongNextButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongNextButtonLocator}
    input text    ${AssignmentsCreateNewSendSongTrackFieldLocator}     ${track_name}
    sleep    2
    click element    //*[contains(text(),"${track_name} - ")]
    click element    ${AssignmentsCreateNewSendSongGroupFieldLocator}
    click element    ${AssignmentsCreateNewSendSongGroupFieldTestingElementLocator}
    click button    ${AssignmentsCreateNewSendSongNextButtonLocator}
    sleep   2
    page should contain element    ${AssignmentsCreateNewSendSongSelectLyricsLocator}
    element should be visible    ${AssignmentsCreateNewSendSongSelectLyricsLocator}
    page should contain element    ${AssignmentsCreateNewSendSongSubmitButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongSubmitButtonLocator}
    click button    ${AssignmentsCreateNewSendSongSubmitButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendSongReviewWorkHeadingLocator}
    element should be visible    ${AssignmentsCreateNewSendSongReviewWorkHeadingLocator}
    page should contain element    ${AssignmentsCreateNewSendSongCancelButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongCancelButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendSongSendButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendSongSendButtonLocator}
    click button    ${AssignmentsCreateNewSendSongSendButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AssignmentsCreateNewSendSongSuccessMessageLocator}
    element should be visible    ${AssignmentsCreateNewSendSongSuccessMessageLocator}
    set selenium speed    1

Send a word - Assignment
    [documentation]    Verify send word fields are present and functionality is working correctly

    click button        ${AssignmentsCreateNewButtonLocator}
    click element    ${AssignmentsCreateNewSendWordButtonLocator}
    page should contain element    ${AssignmentsCreateNewSendWordHeadingLocator}
    element should be visible    ${AssignmentsCreateNewSendWordHeadingLocator}
    page should contain element    ${AssignmentsCreateNewSendWordYourWordsFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendWordYourWordsFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendWordGroupFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendWordGroupFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendWordNotesFieldLocator}
    element should be visible    ${AssignmentsCreateNewSendWordNotesFieldLocator}
    page should contain element    ${AssignmentsCreateNewSendWordSendButtonLocator}
    element should be visible    ${AssignmentsCreateNewSendWordSendButtonLocator}
    input text    ${AssignmentsCreateNewSendWordYourWordsFieldLocator}    ${words_field_text}
    press keys    None      ENTER
    click element    ${AssignmentsCreateNewSendWordGroupFieldLocator}
    click element    ${AssignmentsCreateNewSendWordGroupFieldTestingElementLocator}
    click element    ${AssignmentsCreateNewSendWordSendButtonLocator}
#    set selenium speed    0.1
#    page should contain element    ${AssignmentsCreateNewSendWordSuccessMessageLocator}
#    element should be visible    ${AssignmentsCreateNewSendWordSuccessMessageLocator}
#    set selenium speed    1

*** Variables ***
${assignments_heading_text}     Assignments
${table_first_column_text}      Description
${table_second_column_text}     Type
${table_third_column_text}      Sent
${table_fourth_column_text}     Sent to
${table_fifth_column_text}      Opened
${group_field_text}     Testing
${words_field_text}     Testing words