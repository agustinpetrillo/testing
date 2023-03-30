*** Settings ***
Documentation    All keywords related to Youtube page
Library    SeleniumLibrary

*** Keywords ***
# Method
You Need To Login
    [Documentation]    Keyword for login in webpage
    [Arguments]    ${account}    ${password}
    Click Element    xpath://span[contains(text(), "Log in")]
    Check If You Are In Login Screen
    Input Text    css:input.r-t60dpp    ${account}
    Click Element    xpath://span[contains(text(), "Next")]
    Input Text    css:input.r-homxoj.r-poiln3.r-7cikom.r-1ny4l3l.r-t60dpp    ${password}
    Click Element    css:span.r-1inkyih span.r-qvutc0
    Check If You Are In Homepage