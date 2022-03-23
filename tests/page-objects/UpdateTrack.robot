*** Settings ***
Library    SeleniumLibrary
Resource    ./SideNavBar.robot
Documentation    This section contains all the test cases related to Updates Track page/functionality.
Variables    ../../Locators/UpdateTrack.py

*** Keywords ***
Update Track View Page
    [documentation]    Verify Update Track page exists and user is able to view assignments and perform actions

    UpdateTrack
    ${trackUpdate}  get text    ${UpdateTrackHeadingTextLocator}
    should be equal as strings    ${trackUpdate}    ${update_track}
    page should contain element    ${UpdateTrackSearchSongFieldLocator}
    element should be visible    ${UpdateTrackSearchSongFieldLocator}
    page should contain element    ${UpdateTrackTitleFieldLocator}
    element should be visible    ${UpdateTrackTitleFieldLocator}
    page should contain element    ${UpdateTrackYoutubeIDFieldLocator}
    element should be visible    ${UpdateTrackYoutubeIDFieldLocator}
    page should contain element    ${UpdateTrackLyricsFieldLocator}
    element should be visible    ${UpdateTrackLyricsFieldLocator}
    page should contain element    ${UpdateTrackTagsFieldLocator}
    element should be visible    ${UpdateTrackTagsFieldLocator}
    page should contain element    ${UpdateTrackExplicitCoverFieldLocator}
    element should be visible    ${UpdateTrackExplicitCoverFieldLocator}
    page should contain element    ${UpdateTrackSaveButtonLocator}
    element should be visible    ${UpdateTrackSaveButtonLocator}
    input text    ${UpdateTrackSearchSongFieldLocator}   ${track_name}
    click element    //*[contains(text(),"${track_name} -")]
    input text    ${UpdateTrackTitleFieldLocator}     ${title}
    input text    ${UpdateTrackYoutubeIDFieldLocator}    ${youtubeid}
    input text    ${UpdateTrackLyricsFieldLocator}    ${lyrics}
    input text    ${UpdateTrackTagsFieldLocator}      ${tag}
    click element    ${UpdateTrackSaveButtonLocator}
    click element    ${UpdateTrackExplicitCoverFieldLocator}

*** Variables ***
${update_track}     Track Update
${title}   Testing Song
${youtubeId}   432543
${lyrics}  Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc, quis gravida magna mi a libero. Fusce vulputate eleifend sapien. Vestibulum purus quam, scelerisque ut, mollis sed, nonummy id, metus. Nullam accumsan lorem in dui. Cras ultricies mi eu turpis hendrerit fringilla. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; In ac dui quis mi consectetuer lacinia. Nam pretium turpis et arcu. Duis arcu tortor, suscipit eget, imperdiet nec, imperdiet iaculis, ipsum. Sed aliquam ultrices mauris. Integer ante arcu, accumsan a, consectetuer eget, posuere ut, mauris. Praesent adipiscing. Phasellus ullamcorper ipsum rutrum nunc. Nunc nonummy metus. Vestibulum volutpat pretium libero. Cras id dui. Aenean ut eros et nisl sagittis vestibulum. Nullam nulla eros, ultricies sit
${tag}  Testing
