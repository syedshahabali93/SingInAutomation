*** Settings ***
Library    SeleniumLibrary
Library    SeleniumLibrary
Documentation    This section contains all the test cases related to Dashboard page/functionality.
Library    SeleniumLibrary

*** Test Cases ***

Dashboard Test
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
