*** Settings ***
Documentation    All keywords related to Steam page
Library    SeleniumLibrary
Library    String

*** Keywords ***
Search Game And Open Steam Page
    [Documentation]    Searches given game and opens it's Steam page
    [Arguments]    ${game}
    Input Text    css:input#store_nav_search_term    ${game}
    Press Keys    css:input#store_nav_search_term    ENTER
    Click Element    xpath://div[contains(@class, 'search_name')]//span[contains(text(),'${game}')]

The Game Has To Verify Your Age
    [Documentation]    If you are not logged or never filled your age form, you will need to complete it
    Wait Until Page Contains Element    css:div.agegate_birthday_desc
    Select From List By Label    ageDay    1
    Select From List By Label    ageMonth    January
    Select From List By Label    ageYear    1996
    Click Element    id:view_product_page_btn   

Convert The Price Into An Integer Value
    [Documentation]    Take the price value and make it integer to add with another price
    [Arguments]    
    ${price} =    Get Text      css:div.game_purchase_price
    ${price} =    Remove String        ${price}    ARS$    ,     
    ${val} =    Convert To Number    ${price}
    RETURN    ${val}

Add Two Games Prices
    [Documentation]    Add two games prices with taxes
    [Arguments]    ${first_game_price}    ${second_game_price}    ${first_game}    ${second_game}
    ${result} =    Set Variable    ${{${first_game_price} + ${second_game_price}}}
    Log To Console    Total price of ${first_game} and ${second_game} is ${result}, but in Argentina the price with taxes is ${{(74 * ${first_game_price} / 100) + ${first_game_price} + (74 * ${second_game_price} / 100) + ${second_game_price}}}
