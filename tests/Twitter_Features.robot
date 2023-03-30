*** Settings ***
Documentation    Checking features of Twitter webpage
Library    SeleniumLibrary
Resource    Base.resource
Test Setup    Before Each

*** Variables ***
${ACCOUNT}    foresttesting
${PASSWORD}    testing123

*** Keywords ***
Before Each
    [Documentation]    Run this test everytime
    Open Browser And Enter URL    https://www.twitter.com/    chrome

*** Test Cases ***
Go To Homepage
    Set Selenium Speed    0.5
    Check If You Are In Twitter Webpage
    You Need To Login    ${ACCOUNT}    ${PASSWORD}    
    
    

    

