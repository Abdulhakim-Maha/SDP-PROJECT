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

T0031 ใส่ชื่อเป็นภาษาไทยผสมภาษาอื่นๆที่ไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    จุฑารัตน์名前
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0032 ใส่ชื่อเป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    John Doe名前
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0038 ใส่นามสกุลเป็นภาษาอังกฤษ
	[Tags]    successful-case
	Open Browser    ${url_form}    chrome
	Sleep    3s
	Click Element   ${button_buy}
	Sleep    3s
	Click Element   ${button_oncash}
	Sleep    3s
	Input Text    ${textbox_name}     จุฑารัตน์
	Input Text    ${textbox_surname}    Roberts     
	Input Text    ${textbox_tel}    0820567554   
	Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
	Click Element    ${button_order}
	Sleep    5s
	Title Should Be    Order   


T0045 ใส่นามสกุลเป็นภาษาไทยผสมภาษาอื่นๆที่ไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง蒙     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart   

T0046 ใส่นามสกุลเป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts蒙     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart   

T0063 ใส่นามสกุลเป็นตัวอักษรจำนวน3ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอน  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order  

T0073 ใส่ที่อยู่เป็นภาษาไทยผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
	[Tags]    fail-case
	Open Browser    ${url_form}    chrome
	Sleep    3s
	Click Element   ${button_buy}
	Sleep    3s
	Click Element   ${button_oncash}
	Sleep    3s
	Input Text    ${textbox_name}     จุฑารัตน์
	Input Text    ${textbox_surname}     ดอนแสง  
	Input Text    ${textbox_tel}    0820567554   
	Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด 春武里府帕那尼洪區 20140
	Click Element    ${button_order}
	Sleep    5s
	Title Should Be    Cart 

T0074 ใส่ที่อยู่เป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
	[Tags]    fail-case
	Open Browser    ${url_form}    chrome
	Sleep    3s
	Click Element   ${button_buy}
	Sleep    3s
	Click Element   ${button_oncash}
	Sleep    3s
	Input Text    ${textbox_name}     จุฑารัตน์
	Input Text    ${textbox_surname}     ดอนแสง  
	Input Text    ${textbox_tel}    0820567554   
	Input Text    ${textbox_addr}   17/4 Moo 5 Nong Khayat Subdistrict,春武里府帕那尼洪區 20140
	Click Element    ${button_order}
	Sleep    5s
	Title Should Be    Cart 

T0075 ใส่ที่อยู่เป็นภาษาอื่นนอกเหนือจากภาษาอังกฤษและภาษาไทย
	[Tags]    fail-case
	Open Browser    ${url_form}    chrome
	Sleep    3s
	Click Element   ${button_buy}
	Sleep    3s
	Click Element   ${button_oncash}
	Sleep    3s
	Input Text    ${textbox_name}     จุฑารัตน์
	Input Text    ${textbox_surname}     ดอนแสง  
	Input Text    ${textbox_tel}    0820567554   
	Input Text    ${textbox_addr}   17/4 街道 20140 春武里府帕那尼洪區
	Click Element    ${button_order}
	Sleep    5s
	Title Should Be    Cart 

