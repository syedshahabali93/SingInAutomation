*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Marketplace page/functionality.
Variables    ../../Locators/Marketplace.py

*** Keywords ***

Marketplace view section
    [documentation]    Verify marketplace page exists and user is able to view songs and perform actions

    Marketplace
    page should contain element    ${MarketplaceHeadingLocator}
    element should be visible    ${MarketplaceHeadingLocator}
    ${marketplace}      get text    ${MarketplaceHeadingLocator}
    should be equal as strings    ${marketplace}    ${market_place}

Create Lesson - Marketplace
    [documentation]    Verify create lesson functionality is working correctly

    page should contain element    ${MarketplaceCreateALessonButtonLocator}
    element should be visible    ${MarketplaceCreateALessonButtonLocator}
    click button    ${MarketplaceCreateALessonButtonLocator}
    page should contain element    ${MarketplaceCreateALessonTitleFieldLocator}
    element should be visible    ${MarketplaceCreateALessonTitleFieldLocator}
    page should contain element    ${MarketplaceCreateALessonDescriptionFieldLocator}
    element should be visible    ${MarketplaceCreateALessonDescriptionFieldLocator}
    page should contain element    ${MarketplaceCreateALessonSearchSongFieldLocator}
    element should be visible    ${MarketplaceCreateALessonSearchSongFieldLocator}
    page should contain element    ${MarketplaceCreateALessonDifficultyFieldLocator}
    element should be visible    ${MarketplaceCreateALessonDifficultyFieldLocator}
    page should contain element    ${MarketplaceCreateALessonDurationFieldLocator}
    element should be visible    ${MarketplaceCreateALessonDurationFieldLocator}
    page should contain element    ${MarketplaceCreateALessonAgeGradeFieldLocator}
    element should be visible    ${MarketplaceCreateALessonAgeGradeFieldLocator}
    page should contain element    ${MarketplaceCreateALessonLearnedWordsFieldLocator}
    element should be visible    ${MarketplaceCreateALessonLearnedWordsFieldLocator}
    page should contain element    ${MarketplaceCreateALessonMakePublicFieldLocator}
    element should be visible    ${MarketplaceCreateALessonMakePublicFieldLocator}
    page should contain element    ${MarketplaceCreateALessonSaveButtonLocator}
    element should be visible    ${MarketplaceCreateALessonSaveButtonLocator}
    input text    ${MarketplaceCreateALessonTitleFieldLocator}     ${title}
    input text    ${MarketplaceCreateALessonDescriptionFieldLocator}       ${description}
    input text    ${MarketplaceCreateALessonSearchSongFieldLocator}       ${track_name}
    sleep    2
    click element    //*[contains(text(),"${track_name} - ")]
    click element    ${MarketplaceCreateALessonDifficultyFieldLocator}
    click element    ${MarketplaceCreateALessonDifficultyEasyElementLocator}
    click element    ${MarketplaceCreateALessonDurationFieldLocator}
    click element    ${MarketplaceCreateALessonDurationFiveMinutestElementLocator}
    click element    ${MarketplaceCreateALessonAgeGradeFieldLocator}
    click element    ${MarketplaceCreateALessonAgeGradeSecondGradeElementLocator}
    input text    ${MarketplaceCreateALessonLearnedWordsFieldLocator}     ${learned_words}
    press keys    None      ENTER
    click button    ${MarketplaceCreateALessonSaveButtonLocator}
    set selenium speed    0.1
    page should contain element    ${MarketplaceCreateALessonCreatedSuccessMessageLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedSuccessMessageLocator}
    set selenium speed    1

Verify lesson view page details - Marketplace
    [documentation]    Verify fields are present on lesson view page

    page should contain element    ${MarketplaceCreateALessonCreatedLessonHeadingLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonHeadingLocator}
    ${createdLessonName}    get text    ${MarketplaceCreateALessonCreatedLessonHeadingLocator}
    should be equal as strings    ${createdLessonName}      ${title}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewEditButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewEditButtonLocator}

Use lesson pop-up - Marketplace
    [documentation]    Verify Use lesson pop-up fields

    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonButtonLocator}
    click button    ${MarketplaceCreateALessonCreatedLessonViewUseLessonButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonKeepButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonKeepButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditButtonLocator}
    ${edit}     get text    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditButtonLocator}
    should be equal as strings    ${edit}     ${edit_text}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonGroupFieldLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonGroupFieldLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonSendButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonSendButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonCancelButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonCancelButtonLocator}

Edit lesson pop-up - Marketplace
    [documentation]    Verify Edit lesson pop-up fields

    click element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditPopupContinueButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditPopupContinueButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditPopupCancelButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditPopupCancelButtonLocator}
    press keys    None      ESC

Like lesson functionality test - Markeplace
    [documentation]    Verify like button is working correclty

    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    ${likeElementText}   get text    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    ${like_count_old}   convert to integer    ${likeElementText}
    click button    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    ${like_count_new_text}   get text    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    ${like_count_new}   convert to integer    ${like_count_new_text}
    should be true    ${like_count_new-1}==${like_count_old}

Dislike lesson functionality test - Marketplace
    [documentation]    Verify dislike button is working correctly

    ${dislike_element_text}     get text    ${MarketplaceCreateALessonCreatedLessonViewDislikeButtonLocator}
    ${dislike_count_old}    convert to integer    ${dislike_element_text}
    click button    ${MarketplaceCreateALessonCreatedLessonViewDislikeButtonLocator}
    ${dislike_count_new_text}    get text    ${MarketplaceCreateALessonCreatedLessonViewDislikeButtonLocator}
    ${dislike_count_new}    convert to integer    ${dislike_count_new_text}
    should be true    ${dislike_count_new-1}==${dislike_count_old}

Edit lesson - Marketplace
    [documentation]    Verify edit lesson functionality is working

    click element    ${MarketplaceCreateALessonCreatedLessonViewEditButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonHeadingLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewEditLessonHeadingLocator}
    input text    ${MarketplaceCreateALessonCreatedLessonViewEditLessonTitleFieldLocator}     ${updated_title}
    input text    ${MarketplaceCreateALessonCreatedLessonViewEditLessonDescriptionFieldLocator}       ${updated_description}
    input text    ${MarketplaceCreateALessonCreatedLessonViewEditLessonSearchSongFieldLocator}       ${track_name}
    sleep    2
    click element    //*[contains(text(),"${track_name} - ")]
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonDifficultyFieldLocator}
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonDifficultyRegularElementFieldLocator}
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonDurationFieldLocator}
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonDurationTenMinutesElemenFieldLocator}
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonAgeGradeFieldLocator}
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonAgeGradeFieldThirdGradeElementLocator}
    input text    ${MarketplaceCreateALessonCreatedLessonViewEditLessonLearnedWordsFieldLocator}     ${updated_learned_words}
    press keys    None      ENTER
    click button    ${MarketplaceCreateALessonCreatedLessonViewEditLessonSaveButtonLocator}
    sleep    1
    set selenium speed    0.1
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewEditLessonUpdatedSuccessMessageLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewEditLessonUpdatedSuccessMessageLocator}
    set selenium speed    1

Verify edited lesson details - Marketplace
    [documentation]    Verify updated details are saved and showing after lesson has been edited

    sleep    2
    ${createdLessonName}    get text    ${MarketplaceCreateALessonCreatedLessonHeadingLocator}
    should be equal as strings    ${createdLessonName}      ${updated_title}
    ${updatedDescription}   get text    ${MarketplacePageViewEditedLessonDescriptionFieldLocator}
    should be equal as strings    ${updatedDescription}      ${updated_description}
    ${updatedDuration}      get text    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewDurationLocator}
    should be equal as strings    ${updatedDuration}    ${updated_duration}
    ${ageGrade}     get text    ${MarketplacePageViewEditedLessonGradeFieldLocator}
    should be equal as strings    ${ageGrade}   ${age_grade}
    ${difficulty}   get text    ${MarketplacePageViewEditedLessonDifficultyFieldLocator}
    should be equal as strings    ${difficulty}     ${difficuly_text}

All assignment types - Edit Lesson - Marketplace
    [documentation]    Verify all assignment types in Edit lesson and their creation flow

    click element    ${MarketplaceCreateALessonCreatedLessonViewEditButtonLocator}
    sleep    5
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewEditLessonAddAssignmentButtonLocator}
    ${assignmentType}   get text    ${AddAssignmentPopupHeadingLocator}
    should be equal as strings    ${assignmentType}     ${assignment_types_heading}
    ${grammar_test}     get text    ${AddAssignmentPopupGrammarTestLocator}
    should be equal as strings    ${grammar_test}   ${grammar_type}
    ${unseen}   get text    ${AddAssignmentPopupUnseenLocator}
    should be equal as strings    ${unseen}     ${unseen_type}
    ${fill_blanks}      get text    ${AddAssignmentPopupFillBlanksLocator}
    should be equal as strings    ${fill_blanks}    ${fill_blanks_type}
    ${word_pause}   get text    ${AddAssignmentPopupWordPauseLocator}
    should be equal as strings    ${word_pause}     ${word_pause_type}
    ${vocabulary_quiz}  get text    ${AddAssignmentPopupVocabularyQuizLocator}
    should be equal as strings    ${vocabulary_quiz}    ${vocabulary_quiz_type}
    ${speaking_quiz}    get text    ${AddAssignmentPopupSpeakingQuizLocator}
    should be equal as strings    ${speaking_quiz}  ${speaking_quiz_type}
    click element    ${AddAssignmentPopupGrammarTestLocator}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${grammarTypeSecondpopup}     get text    ${AddAssignmentPopupGrammarTestFirstPopupHeadingLocator}
    should be equal as strings    ${grammarTypeSecondpopup}     ${grammar_type_second_popup}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${grammarTypeThirdPopup}    get text    ${AddAssignmentPopupGrammarTestSecondPopupHeadingLocator}
    should be equal as strings    ${grammarTypeThirdPopup}  ${grammar_type_third_popup}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${grammarTypeFourthPopup}   get text    ${AddAssignmentPopupGrammarTestThirdPopupHeadingLocator}
    should be equal as strings  ${grammarTypeFourthPopup}   ${grammar_type_fourth_popup}
    sleep    2
    click element    ${AddAssignmentPopupCreateButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AddAssignmentPopupSuccessfulCreation}
    element should be visible    ${AddAssignmentPopupSuccessfulCreation}
    set selenium speed    1
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewEditLessonAddAssignmentButtonLocator}
    click element    ${AddAssignmentPopupUnseenLocator}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${unseenTypeSecondpopup}     get text    ${AddAssignmentPopupUnseenFirstPopupHeadingLocator}
    should be equal as strings    ${grammarTypeSecondpopup}     ${unseenTypeSecondpopup}
    input text      ${AddAssignmentPopupUnseenFirstPopupTextareaLocator}     ${unseen_type_second_popup_text}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    sleep    15
    click element    ${AddAssignmentPopupNextButtonLocator}
    sleep    2
    click element    ${AddAssignmentPopupCreateButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AddAssignmentPopupSuccessfulCreation}
    set selenium speed    1
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewEditLessonAddAssignmentButtonLocator}
    sleep    2
    click element    ${AddAssignmentPopupFillBlanksLocator}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${fillBlanksSecondPopup}    get text    ${AddAssignmentPopupWordPauseFirstPopupTextareaLocator}
    should be equal as strings    ${fillBlanksSecondPopup}      ${word_pause_second_popup}
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${fillBlanksThirdPopup}     get text    ${AddAssignmentPopupGrammarTestThirdPopupHeadingLocator}
    should be equal as strings    ${fillBlanksThirdPopup}   ${grammar_type_fourth_popup}
    sleep    2
    click element    ${AddAssignmentPopupCreateButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AddAssignmentPopupSuccessfulCreation}
    set selenium speed    1
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewEditLessonAddAssignmentButtonLocator}
    sleep    2
    click element    ${AddAssignmentPopupWordPauseLocator}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${wordPauseSecondPopup}     get text    ${AddAssignmentPopupWordPauseFirstPopupTextareaLocator}
    should be equal as strings    ${word_pause_second_popup}    ${wordPauseSecondPopup}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    sleep    2
    click element    ${AddAssignmentPopupCreateButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AddAssignmentPopupSuccessfulCreation}
    set selenium speed    1
    click element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewEditLessonAddAssignmentButtonLocator}
    sleep    1
    click element    ${AddAssignmentPopupVocabularyQuizLocator}
    sleep    2
    click element    ${AddAssignmentPopupNextButtonLocator}
    ${vocabularyQuizSecondPopup}    get text    ${AddAssignmentPopupVocabularyQuizFirstPopupLocator}
    should be equal as strings    ${vocabulary_quiz_second_popup}   ${vocabularyQuizSecondPopup}
    sleep    2
    click element    ${AddAssignmentPopupCreateButtonLocator}
    set selenium speed    0.1
    page should contain element    ${AddAssignmentPopupSuccessfulCreation}
    set selenium speed    1
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewSendLessonButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewSendLessonButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewSeeLessonButtonLocator}
    element should be visible    ${MarketplaceCreateALessonCreatedLessonViewEditedLessonViewSeeLessonButtonLocator}

Verify marketplace main page fields
    [documentation]    Verify marketplace main page fields

    Marketplace
    click element    ${MarketplaceCreateALessonCreatedLessonViewUseLessonEditPopupContinueButtonLocator}
    page should contain element    ${MarketplacePageViewLessonsNumberLocator}
    element should be visible    ${MarketplacePageViewLessonsNumberLocator}
    click element    ${MarketplacePageViewLessonCardLocator}
    ${WindowHandles} =      get window handles    CURRENT
    switch window    NEW
    page should contain element    ${MarketplacePageViewLessonCardViewUseLessonButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewLikeButtonLocator}
    page should contain element    ${MarketplaceCreateALessonCreatedLessonViewDislikeButtonLocator}
    page should contain element    ${MarketplacePageViewEditedLessonDifficultyFieldLocator}
    page should contain element    ${MarketplacePageViewEditedLessonGradeFieldLocator}
    page should contain element    ${MarketplacePageViewLessonCardWordsLocator}
    page should contain element    ${MarketplacePageViewEditedLessonDurationFieldLocator}
    page should contain element    ${MarketplacePageViewLessonCardMoreFromSameTeacherElementLocator}
    close window
    switch window    ${WindowHandles}[0]

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
${difficuly_text}   Difficulty
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
${age_grade}    Age grade
