*** Settings ***
Library    SeleniumLibrary
Library    String
Library    Collections
Documentation    Here all the elements that are commonly used over the project are present

*** Keywords ***
Start Test
    set selenium speed    1
    set selenium implicit wait    1
    ${current_directory} =    split string    ${CURDIR}   \\
    remove values from list    ${current_directory}   Resources
    ${jsonFilePath} =    evaluate    "/".join(${current_directory})
    ${json} =    evaluate    json.load(open('${jsonFilePath}/devdata/env.json', 'r'))     json
    set global variable    ${username_email}    ${json['username_email']}
    set global variable    ${user_password}     ${json['password']}
    set global variable    ${website_url_locator}   //*[contains(text(),'https://singit.io')]
    set global variable    ${track_name}    Shonen
    open browser    https://test-dashboard.singit.io/   ${json['browser']}

    maximize browser window

End Test
    close browser
