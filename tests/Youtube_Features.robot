*** Settings ***
Documentation    Searching in Youtube
Library    SeleniumLibrary
Resource    Base.resource
Test Setup    Before Each

*** Keywords ***
Before Each
    Open Browser And Enter URL    https://www.youtube.com    ${BROWSER}

*** Test Cases ***
Search Video
    Search A Video In Youtube And Open It    Dofus 2 hipermago solotage    /watch?v=2dF3C3LQu5E    css:h1.style-scope.ytd-watch-metadata

Checking Trending Topic
    Select Category Button On Sidebar    Trending

Checking Music Topic
    Select Category Button On Sidebar    Music

Checking Movies Topic
    Select Category Button On Sidebar    Movies

Checking Live Topic
    Select Category Button On Sidebar    Live

Checking Gaming Topic
    Select Category Button On Sidebar    Gaming

Checking News Topic
    Select Category Button On Sidebar    News

Checking Sports Topic
    Select Category Button On Sidebar    Sports

Checking Learning Topic
    Select Category Button On Sidebar    Learning
    
    