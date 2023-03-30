*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    Steam/index.resource
Resource    Youtube/index.resource
Resource    Twitter/index.resource

*** Variables ***
${BROWSER}    chrome

*** Keywords ***
Open Browser And Enter URL
    [Documentation]    Open Given URL In Browser
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
