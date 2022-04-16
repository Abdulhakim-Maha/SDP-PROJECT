*** Settings ***
Test Teardown   Close Browser
Library    Selenium2Library



*** Variables ***
${url_signin}    http://localhost:3000/cart
${textbox_name}      //*[@id="name"]
${textbox_surname}      //*[@id="surname"]
${textbox_tel}      //*[@id="tel"]
${textbox_addr}      //*[@id="addr"]
${button_buy}      //*[@id="buy"]
${button_order}      //*[@id="order"]
${button_oncash}    //*[@id="oncash"]
${alert_box_error}     //*[@id="error_alert"]



*** Keywords ***


*** Test Cases ***
T0001 Sign-in everything valid
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob       
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0002 Sign-in 2 chars name
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    wa      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0003 Sign-in 11 chars name
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    wwwwwwwwwww      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0004 Sign-in 9 chars name
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    wwwwwwwww      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0005 Sign-in 4 chars name
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    wwww    
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0006 Sign-in num in name
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    wwww123    
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart



T0007 Sign-in 2 chars surname
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    ke
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0008 Sign-in 11 chars surname
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    kkkkkkkkkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0009 Sign-in 9 chars surname
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    kkkkkkkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0010 Sign-in 4 chars surname
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob    
    Input Text    ${textbox_surname}    kkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0011 Sign-in num in surname
    [Tags]    successful-case
    Open Browser    ${url_signin}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    warapob    
    Input Text    ${textbox_surname}    keatkong1234
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart



