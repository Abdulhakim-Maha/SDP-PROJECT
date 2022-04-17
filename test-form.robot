*** Settings ***
Test Teardown   Close Browser
Library    Selenium2Library



*** Variables ***
${url_form}    http://localhost:3000/cart
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
T0001 fill the form everything valid
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob       
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0002 fill the form 2 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    wa      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0003 fill the form 31 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0004 fill the form 29 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    wwwwwwwwwwwwwwwwwwwwwwwwwwwww      
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0005 fill the form 4 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    wwww    
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0006 fill the form num in name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    wwww123    
    Input Text    ${textbox_surname}    keatkong
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart



T0007 fill the form 2 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    ke
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0008 fill the form 31 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0009 fill the form 29 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob      
    Input Text    ${textbox_surname}    kkkkkkkkkkkkkkkkkkkkkkkkkkkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0010 fill the form 4 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob    
    Input Text    ${textbox_surname}    kkkk
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0011 fill the form num in surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    warapob    
    Input Text    ${textbox_surname}    keatkong1234
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart




T0012 fill the form everything valid
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ       
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0013 fill the form 2 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วร      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0014 fill the form 31 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    ววววววววววววววววววววววววววววววว      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0015 fill the form 29 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    ววววววววววววววววววววววววววววว      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0016 fill the form 4 chars name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วววว    
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0017 fill the form num in name
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    ววว๑๒๓    
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart



T0018 fill the form 2 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    กก
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0019 fill the form 31 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    กกกกกกกกกกกกกกกกกกกกกกกกกกกกกกก
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0020 fill the form 29 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    กกกกกกกกกกกกกกกกกกกกกกกกกกกกก
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0021 fill the form 4 chars surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ    
    Input Text    ${textbox_surname}    กกกก
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0022 fill the form num in surname
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ    
    Input Text    ${textbox_surname}    กกกก1234
    Input Text    ${textbox_tel}    123426789
    Input Text    ${textbox_addr}    ไม่รู้
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart
