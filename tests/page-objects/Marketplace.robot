*** Settings ***
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Marketplace page/functionality.

*** Keywords ***
Marketplace view section
    [documentation]    Verify marketplace page exists and user is able to view songs and perform actions
    page should contain element    //*[@id="wrapper"]/div[1]/h1
    element should be visible    //*[@id="wrapper"]/div[1]/h1
    ${marketplace}      get text    //*[@id="wrapper"]/div[1]/h1
    should be equal as strings    ${marketplace}    ${market_place}
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
    input text    //*[contains(text(),"Search song")]       ${song_name}
    sleep    2
    click element    //*[contains(text(),"Shonen - Orelsan")]
    input text    //*[contains(text(),"Difficulty")]    ${difficulty_easy}
    input text    //*[contains(text(),"Duration")]      ${duration}
    input text    //*[contains(text(),"Age grade")]     ${age_grade}
    input text    //*[contains(text(),"Learned words")]     ${learned_words}
    press keys    None      ENTER
    click button    //*[contains(text(),"Save")]
    page should contain element    //*[contains(text(),"Lesson createed successfully.")]
    element should be visible    //*[contains(text(),"Lesson createed successfully.")]
    page should contain element    //*[@id="main-details"]/h1
    element should be visible    //*[@id="main-details"]/h1
    ${createdLessonName}    get text    //*[@id="main-details"]/h1
    should be equal as strings    ${createdLessonName}      ${title}
    page should contain element    //*[contains(text(),"Edit")]
    element should be visible    //*[contains(text(),"Edit")]
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
    click button    //*[@id="wrapper"]/div[1]/span[2]
    page should contain element    //*[contains(text(),"Continue")]
    element should be visible    //*[contains(text(),"Continue")]
    page should contain element    //*[contains(text(),"Cancel")]
    element should be visible    //*[contains(text(),"Cancel")]
    press keys    None      ESC
    page should contain element    //*[@id="main-details"]/div[1]/button[2]
    element should be visible    //*[@id="main-details"]/div[1]/button[2]
    ${likeElementText}   get text    //*[@id="main-details"]/div[1]/button[2]
    ${like_count_old}   evaluate    "${likeElementText}".split(" ")[1]
    click button    //*[@id="main-details"]/div[1]/button[2]
    ${like_count_new}   get text    //*[@id="main-details"]/div[1]/button[2]
    should be true    ${like_count_new}==${like_count_old-1}
    ${dislike_element_text}     get text    //*[@id="main-details"]/div[1]/button[3]
    ${dislike_count_old}    evaluate    "${dislike_element_text}".split(" ")[1]
    click button    //*[@id="main-details"]/div[1]/button[3]
    ${dislike_count_new}    get text    //*[@id="main-details"]/div[1]/button[3]
    should be true    ${dislike_count_new}==${dislike_count_old-1}
    click element    //*[contains(text(),"Edit")]
    page should contain element    //*[contains(text(),"Edit lesson")]
    element should be visible    //*[contains(text(),"Edit lesson")]
    input text    //*[contains(text(),"Title")]     ${updated_title}
    input text    //*[contains(text(),"Description")]       ${updated_description}
    input text    //*[contains(text(),"Search song")]       ${song_name}
    sleep    2
    click element    //*[contains(text(),"Shonen - Orelsan")]
    input text    //*[contains(text(),"Difficulty")]    ${difficulty_regular}
    input text    //*[contains(text(),"Duration")]      ${duration_updated}
    input text    //*[contains(text(),"Age grade")]     ${updated_age_grade}
    input text    //*[contains(text(),"Learned words")]     ${updated_learned_words}
    press keys    None      ENTER
    click button    //*[contains(text(),"Save")]
    page should contain element    //*[contains(text(),"Lesson updated successfully.")]
    element should be visible    //*[contains(text(),"Lesson updated successfully.")]
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


*** Variables ***
${title}    Testing Lesson
${updated_title}    Lesson Testing
${description}  Testing Description
${updated_description}  Description Testing
${song_name}    Shonen
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

