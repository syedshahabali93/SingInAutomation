*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Marketplace page/functionality.
Library    SeleniumLibrary

*** Keywords ***

Marketplace view section
    [documentation]    Verify marketplace page exists and user is able to view songs and perform actions

    Marketplace
    page should contain element    //*[@id="wrapper"]/div[1]/h1
    element should be visible    //*[@id="wrapper"]/div[1]/h1
    ${marketplace}      get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${marketplace}    ${market_place}

Create Lesson - Marketplace
    [documentation]    Verify create lesson functionality is working correctly

    page should contain element    //*[contains(text(),"Create a lesson")]
    element should be visible    //*[contains(text(),"Create a lesson")]
    click button    //*[contains(text(),"Create a lesson")]
    page should contain element    //*[contains(text(),"Title")]
    element should be visible    //*[contains(text(),"Title")]
    page should contain element    //*[contains(text(),"Description")]
    element should be visible    //*[contains(text(),"Description")]
    page should contain element    //*[contains(text(),"Search song")]
    element should be visible    //*[contains(text(),"Search song")]
    page should contain element    //*[contains(text(),"Difficulty")]
    element should be visible    //*[contains(text(),"Difficulty")]
    page should contain element    //*[contains(text(),"Duration")]
    element should be visible    //*[contains(text(),"Duration")]
    page should contain element    //*[contains(text(),"Age grade")]
    element should be visible    //*[contains(text(),"Age grade")]
    page should contain element    //*[contains(text(),"Learned words")]
    element should be visible    //*[contains(text(),"Learned words")]
    page should contain element    //*[contains(text(),"Make public")]
    element should be visible    //*[contains(text(),"Make public")]
    page should contain element    //*[contains(text(),"Save")]
    element should be visible    //*[contains(text(),"Save")]
    input text    //*[contains(text(),"Title")]     ${title}
    input text    //*[contains(text(),"Description")]       ${description}
    input text    //*[contains(text(),"Search song")]       %{track_name}
    sleep    2
    click element    //*[contains(text(),"%{track_name} - Orelsan")]
    input text    //*[contains(text(),"Difficulty")]    ${difficulty_easy}
    input text    //*[contains(text(),"Duration")]      ${duration}
    input text    //*[contains(text(),"Age grade")]     ${age_grade}
    input text    //*[contains(text(),"Learned words")]     ${learned_words}
    press keys    None      ENTER
    click button    //*[contains(text(),"Save")]
    page should contain element    //*[contains(text(),"Lesson createed successfully.")]
    element should be visible    //*[contains(text(),"Lesson createed successfully.")]

Verify lesson view page details - Marketplace
    [documentation]    Verify fields are present on lesson view page

    page should contain element    //*[@id="main-details"]/h1
    element should be visible    //*[@id="main-details"]/h1
    ${createdLessonName}    get text    //*[@id="main-details"]/h1
    should be equal as strings    ${createdLessonName}      ${title}
    page should contain element    //*[contains(text(),"Edit")]
    element should be visible    //*[contains(text(),"Edit")]

Use lesson pop-up - Marketplace
    [documentation]    Verify Use lesson pop-up fields

    page should contain element    //*[contains(text(),"Use lesson")]
    element should be visible    //*[contains(text(),"Use lesson")]
    click button    //*[contains(text(),"Use lesson")]
    page should contain element    //*[contains(text(),"Keep")]
    element should be visible    //*[contains(text(),"Keep")]
    page should contain element    //*[@id="wrapper"]/div[1]/span[2]
    element should be visible    //*[@id="wrapper"]/div[1]/span[2]
    ${edit}     get text    //*[@id="wrapper"]/div[1]/span[2]
    should be equal as strings    //*[@id="wrapper"]/div[1]/span[2]     ${edit_text}
    page should contain element    //*[contains(text(),"Group")]
    element should be visible    //*[contains(text(),"Group")]
    page should contain element    //*[@id="wrapper"]/div[3]/button[1]
    element should be visible    //*[@id="wrapper"]/div[3]/button[1]
    page should contain element    //*[contains(text(),"Cancel")]
    element should be visible    //*[contains(text(),"Cancel")]

Edit lesson pop-up - Marketplace
    [documentation]    Verify Edit lesson pop-up fields

    click button    //*[@id="wrapper"]/div[1]/span[2]
    page should contain element    //*[contains(text(),"Continue")]
    element should be visible    //*[contains(text(),"Continue")]
    page should contain element    //*[contains(text(),"Cancel")]
    element should be visible    //*[contains(text(),"Cancel")]
    press keys    None      ESC

Like lesson functionality test - Markeplace
    [documentation]    Verify like button is working correclty

    page should contain element    //*[@id="main-details"]/div[1]/button[2]
    element should be visible    //*[@id="main-details"]/div[1]/button[2]
    ${likeElementText}   get text    //*[@id="main-details"]/div[1]/button[2]
    ${like_count_old}   evaluate    "${likeElementText}".split(" ")[1]
    click button    //*[@id="main-details"]/div[1]/button[2]
    ${like_count_new}   get text    //*[@id="main-details"]/div[1]/button[2]
    should be true    ${like_count_new}==${like_count_old-1}

Dislike lesson functionality test - Marketplace
    [documentation]    Verify dislike button is working correctly

    ${dislike_element_text}     get text    //*[@id="main-details"]/div[1]/button[3]
    ${dislike_count_old}    evaluate    "${dislike_element_text}".split(" ")[1]
    click button    //*[@id="main-details"]/div[1]/button[3]
    ${dislike_count_new}    get text    //*[@id="main-details"]/div[1]/button[3]
    should be true    ${dislike_count_new}==${dislike_count_old-1}

Edit lesson - Marketplace
    [documentation]    Verify edit lesson functionality is working

    click element    //*[contains(text(),"Edit")]
    page should contain element    //*[contains(text(),"Edit lesson")]
    element should be visible    //*[contains(text(),"Edit lesson")]
    input text    //*[contains(text(),"Title")]     ${updated_title}
    input text    //*[contains(text(),"Description")]       ${updated_description}
    input text    //*[contains(text(),"Search song")]       %{track_name}
    sleep    2
    click element    //*[contains(text(),"%{track_name} - Orelsan")]
    input text    //*[contains(text(),"Difficulty")]    ${difficulty_regular}
    input text    //*[contains(text(),"Duration")]      ${duration_updated}
    input text    //*[contains(text(),"Age grade")]     ${updated_age_grade}
    input text    //*[contains(text(),"Learned words")]     ${updated_learned_words}
    press keys    None      ENTER
    click button    //*[contains(text(),"Save")]
    page should contain element    //*[contains(text(),"Lesson updated successfully.")]
    element should be visible    //*[contains(text(),"Lesson updated successfully.")]

Verify edited lesson details - Marketplace
    [documentation]    Verify updated details are saved and showing after lesson has been edited

    ${createdLessonName}    get text    //*[@id="main-details"]/h1
    should be equal as strings    ${createdLessonName}      ${updated_title}
    ${updatedDescription}   get text    //*[@id="description"]
    should be equal as strings    ${updateDescription}      ${updated_description}
    ${updatedDuration}      get text    //*[@id="stats-row"]/div[10]
    should be equal as strings    ${updatedDuration}    ${updated_duration}
    ${ageGrade}     get text    //*[@id="stats-row"]/div[2]
    should be equal as strings    ${ageGrade}
    ${difficulty}   get text    //*[@id="stats-row"]/div[1]
    should be equal as strings    ${difficulty}     ${difficuly_text}

All assignment types - Edit Lesson - Marketplace
    [documentation]    Verify all assignment types in Edit lesson and their creation flow

    click element    //*[contains(text(),"Edit")]
    click element    //*[@id="more"]
    ${assignmentType}   get text    //*[@id="page-1"]/p
    should be equal as strings    ${assignmentType}     ${assignment_types_heading}
    ${grammar_test}     get text    //*[@id="list"]/li[1]/p
    should be equal as strings    ${grammar_test}   ${grammar_type}
    ${unseen}   get text    //*[@id="list"]/li[2]/p
    should be equal as strings    ${unseen}     ${unseen_type}
    ${fill_blanks}      get text    //*[@id="list"]/li[3]/p
    should be equal as strings    ${fill_blanks}    ${fill_blanks_type}
    ${word_pause}   get text    //*[@id="list"]/li[4]/p
    should be equal as strings    ${word_pause}     ${word_pause_type}
    ${vocabulary_quiz}  get text    //*[@id="list"]/li[5]/p
    should be equal as strings    ${vocabulary_quiz}    ${vocabulary_quiz_type}
    ${speaking_quiz}    get text    //*[@id="list"]/li[6]/p
    should be equal as strings    ${speaking_quiz}  ${speaking_quiz_type}
    click element    //*[@id="list"]/li[1]/p
    click element    //*[@id="navigation-row"]/span[2]
    ${grammarTypeSecondpopup}     get text    //*[@id="page-3"]/p
    should be equal as strings    ${grammarTypeSecondpopup}     ${grammar_type_second_popup}
    click element    //*[@id="navigation-row"]/span[2]
    ${grammarTypeThirdPopup}    get text    //*[@id="page-4"]/p
    should be equal as strings    ${grammarTypeThirdPopup}  ${grammar_type_third_popup}
    click element    //*[@id="navigation-row"]/span[2]
    ${grammarTypeFourthPopup}   get text    //*[@id="page-5"]/p
    should be equal as strings  ${grammarTypeFourthPopup}   ${grammar_type_fourth_popup}
    click element    //*[@id="navigation-row"]/span[2]
    page should contain element    //*[contains(text(),"Created successfully")]
    element should be visible    //*[contains(text(),"Created successfully")]
    click element    //*[@id="more"]
    click element    //*[@id="list"]/li[2]/p
    click element    //*[@id="navigation-row"]/span[2]
    ${unseenTypeSecondpopup}     get text    //*[@id="page-3"]/p
    should be equal as strings    ${grammarTypeSecondpopup}     ${unseenTypeSecondpopup}
    input text      //*[@id="scroll-wrapper"]/form/textarea     ${unseen_type_second_popup_text}
    click element    //*[@id="navigation-row"]/span[2]
    sleep    5
    click element    //*[@id="navigation-row"]/span[2]
    click element    //*[@id="navigation-row"]/span[2]
    page should contain element    //*[contains(text(),"Created successfully")]
    click element    //*[@id="more"]
    click element    //*[@id="list"]/li[3]/p
    click element    //*[@id="navigation-row"]/span[2]
    ${fillBlanksSecondPopup}    get text    //*[@id="page-2"]/p
    should be equal as strings    ${fillBlanksSecondPopup}      ${word_pause_second_popup}
    click element    //*[@id="navigation-row"]/span[2]
    ${fillBlanksThirdPopup}     get text    //*[@id="page-5"]/p
    should be equal as strings    ${fillBlanksThirdPopup}   ${grammar_type_fourth_popup}
    click element    //*[@id="navigation-row"]/span[2]
    page should contain element    //*[contains(text(),"Created successfully")]
    click element    //*[@id="more"]
    click element    //*[@id="list"]/li[4]/p
    click element    //*[@id="navigation-row"]/span[2]
    ${wordPauseSecondPopup}     get text    //*[@id="page-2"]/p
    should be equal as strings    ${word_pause_second_popup}    ${wordPauseSecondPopup}
    click element    //*[@id="navigation-row"]/span[2]
    ${wordPauseThirdPopup}      get text    //*[@id="page-5"]/p
    should be equal as strings    ${grammar_type_fourth_popup}      ${wordPauseThirdPopup}
    click element    //*[@id="navigation-row"]/span[2]
    page should contain element    //*[contains(text(),"Created successfully")]
    click element    //*[@id="more"]
    click element    //*[@id="list"]/li[5]/p
    click element    //*[@id="navigation-row"]/span[2]
    ${vocabularyQuizSecondPopup}    get text    //*[@id="page-6"]/p[1]
    should be equal as strings    ${vocabulary_quiz_second_popup}   ${vocabularyQuizSecondPopup}
    click element    //*[@id="navigation-row"]/span[2]
    page should contain element    //*[contains(text(),"Created successfully")]
    page should contain element    //*[contains(text(),"Send lesson")]
    element should be visible    //*[contains(text(),"Send lesson")]
    page should contain element    //*[contains(text(),"See lesson")]
    element should be visible    //*[contains(text(),"See lesson")]

Verify marketplace main page fields
    [documentation]    Verify marketplace main page fields

    Marketplace
    page should contain element    //*[contains(text(),"lessons found")]
    element should be visible    //*[contains(text(),"lessons found")]
    click element    //*[@id="gallery"]/app-lesson-card[1]/div/div[1]
    page should contain element    //*[contains(text(),"Use lesson")]
    page should contain element    //*[@id="main-details"]/div[1]/button[2]
    page should contain element    //*[@id="main-details"]/div[1]/button[3]
    page should contain element    //*[contains(text(),"Difficulty")]
    page should contain element    //*[contains(text(),"Age grade")]
    page should contain element    //*[contains(text(),"Words")]
    page should contain element    //*[contains(text(),"Duration")]
    page should contain element    //*[contains(text(),"More from the same teacher")]
    page should contain element    //*[contains(text(),"Comments")]

*** Variables ***
${title}    Testing Lesson
${updated_title}    Lesson Testing
${description}  Testing Description
${updated_description}  Description Testing
${difficulty_easy}  Easy
${difficulty_regular}   Regular
${duration}     5 minutes
${updated_duration}     10 minutes
${age_grade}    2nd grade
${updated_age_grade}    3rd grade
${learned_words}    Testing
${updated_learned_words}    Words
${edit_text}    Edit
${market_place}     Marketplace
${age_grade_text}   3rd Age grade
${difficuly_text}   Regular Difficulty
${assignment_types_heading}      Select the assignment type from the list below
${grammar_type}     Grammar test
${unseen_type}      Unseen
${fill_blanks_type}     Fill blanks
${word_pause_type}      Word-pause
${vocabulary_quiz_type}      Vocabulary quiz
${speaking_quiz_type}        Speaking quiz
${grammar_type_second_popup}     Select the base text for the questions
${grammar_type_third_popup}       Select the questions you want to use or create your own
${grammar_type_fourth_popup}    Review your work
${grammar_type_success_message}     Created successfully
${unseen_type_second_popup_text}    Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit
${word_pause_second_popup}      Select words from the lyrics you want to use
${vocabulary_quiz_second_popup}     Create a quiz
