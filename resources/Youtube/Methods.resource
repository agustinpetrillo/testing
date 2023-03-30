*** Settings ***
Documentation    All keywords related to Youtube page
Library    SeleniumLibrary
Library    String

*** Keywords ***
Search Youtube And Open It
    [Documentation]    Search Youtube in google search input and verify if the searching was ok
    Input Text    css:input.gLFyf    youtube
    Press Keys    None    ENTER
    Wait Until Page Contains Element    css:div.g div.tF2Cxc div.yuRUbf h3.LC20lb
    Click Element    css:div.g div.tF2Cxc div.yuRUbf h3.LC20lb
    Wait Until Page Contains Element    css:div#masthead-container div#start

Search Video Using ENTER
    [Documentation]    Search the current video using ENTER
    [Arguments]    ${search_text}
    Input Text    css:input#search    ${search_text}
    Press Keys    css:input#search    ENTER
    Wait Until Page Contains Element    css:button.yt-spec-button-shape-next--icon-leading
    Click Element    css:div#search-clear-button

Search Video Using Search Icon
    [Documentation]    Search the current video using search button
    [Arguments]    ${search_text}
    Input Text    css:input#search    ${search_text}
    Click Element    css:button#search-icon-legacy
    Wait Until Page Contains Element    css:button.yt-spec-button-shape-next--icon-leading

Search A Video In Youtube And Open It
    [Documentation]    Search a video and verify if it's the correct video
    [Arguments]    ${search_text}    ${link}    ${assert_link}
    Search Video Using ENTER    ${search_text}
    Search Video Using Search Icon    ${search_text}
    Click Link    ${link}    
    Wait Until Page Contains Element    ${assert_link}
    Sleep    3

Select Category Button On Sidebar
    [Documentation]    Click selected button on sidebar and asserts you are there
    ...    First letter needs to be uppercase
    [Arguments]    ${text}
    Set Selenium Speed    1
    Click Element    xpath://yt-formatted-string[contains(text(), "${text}")]
    Correct Category Is Displayed    ${text}

*** Variables ***
${BROWSER}    chrome
${URL}    https://www.google.com.ar/