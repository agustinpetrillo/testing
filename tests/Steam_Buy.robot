*** Settings ***
Documentation    Checks two games prices and returns the sum of both including user's country taxes
Library    SeleniumLibrary
Resource    Base.resource
Test Setup    Before Each

*** Variables ***
${FIRST_GAME}    Hogwarts Legacy
${SECOND_GAME}    ELDEN RING

*** Keywords ***
Before Each
    Open Browser And Enter URL    https://store.steampowered.com/?l=spanish    ${BROWSER}

*** Test Cases ***
Search Two Games And Store Prices
    # Get First Game Price
    Steam Page Is Displayed
    Search Game And Open Steam Page    ${FIRST_GAME}    
    Game Page Is Displayed    ${FIRST_GAME}
    ${first_price} =    Convert The Price Into An Integer Value         # Hogwarts Legacy
    
    # Get Second Game Price
    Search Game And Open Steam Page    ${SECOND_GAME}
    The Game Has To Verify Your Age
    Game Page Is Displayed    ${SECOND_GAME}
    ${second_price} =    Convert The Price Into An Integer Value        # ELDEN RING

    # Return Sum Of Prices
    Add Two Games Prices    ${first_price}    ${second_price}    ${FIRST_GAME}    ${SECOND_GAME}