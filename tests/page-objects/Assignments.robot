*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Assignments page/functionality.
Library    SeleniumLibrary

*** Keywords ***
Assignments View Section
    [documentation]    Verify assignments page exists and user is able to view assignments and perform actions

    Assignments
    page should contain element    //*[@id="filter"]/div/span
    element should be visible    //*[@id="filter"]/div/span
    page should contain element    //*[contains(text(),"Create new")]
    element should be visible    //*[contains(text(),"Create new")]
#    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[1]
#    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[1]
    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[2]
    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[2]
    ${description}  get text    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[2]
    should be equal as strings    ${description}    ${table_first_column_text}
    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[3]
    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[3]
    ${type}     get text    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[3]
    should be equal as strings    ${type}   ${table_second_column_text}
    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[4]
    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[4]
    ${sent}     get text    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[4]
    should be equal as strings    ${sent}   ${table_third_column_text}
    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[5]
    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[5]
    ${sent_to}  get text    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[5]
    should be equal as strings    ${sent_to}    ${table_fourth_column_text}
    page should contain element    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[6]
    element should be visible    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[6]
    ${opened}   get text    //*[@id="wrapper"]/app-assignments-table/div/table/tr[1]/th[6]
    should be equal as strings    ${opened}     ${table_fifth_column_text}

Create New - Assignment
    [documentation]    Testing create new button functionality on Assignments page

    click button        //*[contains(text(),"Create new")]
    page should contain element    //*[contains(text(),"Send a song")]
    element should be visible    //*[contains(text(),"Send a song")]
    page should contain element    //*[contains(text(),"Send a word")]
    element should be visible    //*[contains(text(),"Send a word")]

Send Song - Assignment
    [documentation]    Verify send song fields are present and functionality is working correctly

    page should contain element    //*[contains(text(),"Send a song")]
    element should be visible    //*[contains(text(),"Send a song")]
    page should contain element    //*[contains(text(),"Track")]
    element should be visible    //*[contains(text(),"Track")]
    page should contain element    //*[contains(text(),"Group")]
    element should be visible    //*[contains(text(),"Group")]
    page should contain element    //*[contains(text(),"Notes (Optional)")]
    element should be visible    //*[contains(text(),"Notes (Optional)")]
    page should contain element    //*[contains(text(),"Next")]
    element should be visible    //*[contains(text(),"Next")]
    input text    //*[contains(text(),"Track")]     ${track_name}
    sleep    2
    click element    //*[contains(text(),"Shonen - Orelsan")]
    input text    //*[contains(text(),"Group")]     ${group_field_text}
    click button    //*[contains(text(),"Next")]
    page should contain element    //*[contains(text(),"Select lyrics")]
    element should be visible    //*[contains(text(),"Select lyrics")]
    page should contain element    //*[contains(text(),"Submit")]
    element should be visible    //*[contains(text(),"Submit")]
    click button    //*[contains(text(),"Submit")]
    page should contain element    //*[contains(text(),"Review your work")]
    element should be visible    //*[contains(text(),"Review your work")]
    page should contain element    //*[contains(text(),"Cancel")]
    element should be visible    //*[contains(text(),"Cancel")]
    page should contain element    //*[@id="actions"]/button[1]
    element should be visible    //*[@id="actions"]/button[1]
    click button    //*[@id="actions"]/button[1]
    page should contain element    //*[contains(text(),"Song sent successfully")]
    element should be visible    //*[contains(text(),"Song sent successfully")]

Send a word - Assignment
    [documentation]    Verify send word fields are present and functionality is working correctly

    click button        //*[contains(text(),"Create new")]
    click element    //*[contains(text(),"Send a word")]
    page should contain element    //*[contains(text(),"Send words")]
    element should be visible    //*[contains(text(),"Send words")]
    page should contain element    //*[contains(text(),"Your words")]
    element should be visible    //*[contains(text(),"Your words")]
    page should contain element    //*[contains(text(),"Group")]
    element should be visible    //*[contains(text(),"Group")]
    page should contain element    //*[contains(text(),"Notes (Optional)")]
    element should be visible    //*[contains(text(),"Notes (Optional)")]
    page should contain element    //app-send-word/form/button
    element should be visible    //app-send-word/form/button
    input text    //*[contains(text(),"Send words")]    ${words_field_text}
    press keys    None      ENTER
    input text    //*[contains(text(),"Group")]     ${group_field_text}
    click element    //app-send-words/form/button
    page should contain element    //*[contains(text(),"Your words were sent successfully")]
    element should be visible    //*[contains(text(),"Your words were sent successfully")]

*** Variables ***
${table_first_column_text}      Description
${table_second_column_text}     Type
${table_third_column_text}      Sent
${table_fourth_column_text}     Sent to
${table_fifth_column_text}      Opened
${group_field_text}     Testing
${words_field_text}     Testing words