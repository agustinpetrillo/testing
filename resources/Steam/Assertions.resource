*** Settings ***
Documentation    Keywords related to assertions    
Library    SeleniumLibrary

*** Keywords ***
Game Page Is Displayed
    [Documentation]    Asserts given game page is displayed
    [Arguments]    ${game}
    Wait Until Element Contains    css:div#appHubAppName    ${game}

Steam Page Is Displayed
    [Documentation]    Asserts steam home page is displayed
    Wait Until Page Contains Element    css:div.content div.logo span#logo_holder