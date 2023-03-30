*** Settings ***
Documentation    Keyword related to assertions
Library    SeleniumLibrary

*** Keywords ***
Correct Category Is Displayed
    [Documentation]    Check if the category is correctly displayed
    [Arguments]    ${text}
    Wait Until Page Contains Element    xpath://div[contains(@id, "container")]//yt-formatted-string[contains(text(), "${text}")]
