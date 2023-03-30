*** Settings ***
Documentation    Keyword related to assertions
Library    SeleniumLibrary

*** Keywords ***
# Assertion
Check If You Are In Twitter Webpage
    [Documentation]    Asserts you are in Twitter
    Wait Until Page Contains Element    css:header.css-1dbjc4n

# Assertion
Check If You Are In Login Screen
    [Documentation]    Asserts you are in login screen
    Wait Until Page Contains Element    xpath://span[contains(text(), "Sign in to Twitter")]

#Assertion
Check If You Are In Homepage
    [Documentation]    Asserts you are in homepage
    Wait Until Page Contains Element    xpath://span[contains(text(), "Home")]