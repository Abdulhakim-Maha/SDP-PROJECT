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
T0001 ทดลองใส่ตัวเลขอารบิก
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   วรภพ         
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    0856955429
    Input Text    ${textbox_addr}     dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Order

T0002 ทดลองใส่ตัวเลขไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    ๐๘๓๒๔๐๕๕๘๘
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0003 ทดลองใส่ตัวเลขอารบิกจำนวน5ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    06845
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0004 ทดลองใส่ตัวเลขอารบิกจำนวน8ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    09415862
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0005 ทดลองใส่ตัวเลขอารบิกจำนวน9ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    021234567
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order
    
T0006 ทดลองใส่ตัวเลขอารบิกจำนวน10ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    0941586201
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0007 ทดลองใส่ตัวเลขอารบิกจำนวน11ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    3s
    Click Element   ${button_buy}
    Sleep    3s
    Click Element   ${button_oncash}
    Sleep    3s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    09415862012
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    5s
    Title Should Be    Cart

T0008 ทดลองใส่ตัวเลขอารบิกจำนวน15ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    วรภพ      
    Input Text    ${textbox_surname}    เกียรติคงแสง
    Input Text    ${textbox_tel}    092785526422345
    Input Text    ${textbox_addr}    dont know
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0009 ใส่ข้อมูลเฉพาะแค่ชื่อ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์      
    Input Text    ${textbox_surname}    ${EMPTY}
    Input Text    ${textbox_tel}    ${EMPTY}
    Input Text    ${textbox_addr}     ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0010 ใส่ข้อมูลเฉพาะแค่ชื่อ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}       ${EMPTY}   
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    ${EMPTY}
    Input Text    ${textbox_addr}     ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0011 ใส่ข้อมูลเฉพาะแค่เบอร์โทรติดต่อ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     ${EMPTY}     
    Input Text    ${textbox_surname}      ${EMPTY}
    Input Text    ${textbox_tel}    0820567554
    Input Text    ${textbox_addr}     ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0012 ใส่ข้อมูลเฉพาะแค่ที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     ${EMPTY}     
    Input Text    ${textbox_surname}   ${EMPTY}   
    Input Text    ${textbox_tel}     ${EMPTY}
    Input Text    ${textbox_addr}    17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140 
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0013 ใส่ข้อมูลเฉพาะแค่ชื่อและนามสกุล
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์      
    Input Text    ${textbox_surname}    ดอนแสง
    Input Text    ${textbox_tel}     ${EMPTY}
    Input Text    ${textbox_addr}   ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0014 ใส่ข้อมูลเฉพาะแค่ชื่อและเบอร์โทร
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์      
    Input Text    ${textbox_surname}   ${EMPTY} 
    Input Text    ${textbox_tel}    0820567554     
    Input Text    ${textbox_addr}   ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0015 ใส่ข้อมูลเฉพาะแค่ชื่อและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์      
    Input Text    ${textbox_surname}    ${EMPTY}
    Input Text    ${textbox_tel}    ${EMPTY}     
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0016 ใส่ข้อมูลเฉพาะแค่นามสกุลและเบอร์โทร
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     ${EMPTY}      
    Input Text    ${textbox_surname}    ดอนแสง
    Input Text    ${textbox_tel}    0820567554         
    Input Text    ${textbox_addr}   ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0017 ใส่ข้อมูลเฉพาะแค่นามสกุลและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   ${EMPTY}       
    Input Text    ${textbox_surname}    ดอนแสง
    Input Text    ${textbox_tel}    ${EMPTY}              
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0018 ใส่ข้อมูลเฉพาะแค่เบอร์โทรและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}      ${EMPTY}     
    Input Text    ${textbox_surname}    ${EMPTY}
    Input Text    ${textbox_tel}    0820567554              
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0019 ใส่ข้อมูลเฉพาะแค่ชื่อนามสกุลและเบอร์โทร
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์           
    Input Text    ${textbox_surname}    ดอนแสง    
    Input Text    ${textbox_tel}    0820567554              
    Input Text    ${textbox_addr}   ${EMPTY}
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0020 ใส่ข้อมูลเฉพาะแค่ชื่อนามสกุลและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์           
    Input Text    ${textbox_surname}    ดอนแสง    
    Input Text    ${textbox_tel}    ${EMPTY}   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0021 ใส่ข้อมูลเฉพาะแค่ชื่อเบอร์โทรและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์           
    Input Text    ${textbox_surname}    ${EMPTY}     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0022 ใส่ข้อมูลเฉพาะแค่นามสกุลเบอร์โทรและที่อยู่
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   ${EMPTY}           
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0023 ใส่ข้อมูลครบทุกฟิลด์
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์           
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0024 ใส่ชื่อเป็นภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   John
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0025 ใส่ชื่อเป็นภาษาไทย
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0026 ใส่ชื่อเป็นภาษาไทยผสมภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์INW
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0027 ใส่ชื่อเป็นภาษาไทยผสมเลขอาร์บิก
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์12345
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0028 ใส่ชื่อเป็นภาษาไทยผสมเลขไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}   จุฑารัตน์๑๒๓๔๕
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart
    
T0029 ใส่ชื่อเป็นภาษาอังกฤษผสมเลขอาร์บิก
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    John12345
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0030 ใส่ชื่อเป็นภาษาอังกฤษผสมเลขไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    John๑๒๓๔๕
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0031 ใส่ชื่อเป็นภาษาไทยผสมภาษาอื่นๆที่ไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์名前
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0032 ใส่ชื่อเป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    John Doe名前
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0033 ใส่ชื่อเป็นภาษาไทยผสมอักขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    จุฑารัตน์#$&^*(
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0034 ใส่ชื่อเป็นภาษาอังกฤษผสมอักขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}    John Doe#$&^*(
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0035 ใส่ชื่อเป็นภาษาอื่นนอกเหนือจากภาษาอังกฤษและภาษาไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     名前
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart    

T0036 ใส่ชื่อเป็นอักขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     @!$%#$&^*(
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0037 ใส่ชื่อเป็นSpaceBar
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     ${SPACE}
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0038 ใส่นามสกุลเป็นภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order   

T0039 ใส่นามสกุลเป็นภาษาไทย
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order   

T0040 ใส่นามสกุลเป็นภาษาไทยผสมภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสงZaZa     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order   

T0041 ใส่นามสกุลเป็นภาษาไทยผสมเลขอาร์บิก
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง12345     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0042 ใส่นามสกุลเป็นภาษาไทยผสมเลขไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง๑๒๓๔๕     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0043 ใส่นามสกุลเป็นภาษาอังกฤษผสมเลขอาร์บิก
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts12345     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart     

T0044 ใส่นามสกุลเป็นภาษาอังกฤษผสมเลขไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts๑๒๓๔๕     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0045 ใส่นามสกุลเป็นภาษาไทยผสมภาษาอื่นๆที่ไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง蒙     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0046 ใส่นามสกุลเป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts蒙     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0047 ใส่ชื่อเป็นภาษาไทยผสมอักขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสง#$&^*(     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart   

T0048 ใส่ชื่อเป็นภาษาอังกฤษผสมอักขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    Roberts#$&^*(     
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0049 ใส่นามสกุลเป็นภาษาอื่นนอกเหนือจากภาษาอังกฤษและภาษาไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    蒙    
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0050 ใส่นามสกุลเป็นอัขระพิเศษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    >?":{*%$#@!    
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0051 ใส่นามสกุลเป็นSpaceBar
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ${SPACE}    
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0052 ใส่ชื่อเป็นตัวอักษรจำนวน1ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     น
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0053 ใส่ชื่อเป็นตัวอักษรจำนวน2ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     นพ
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0054 ใส่ชื่อเป็นตัวอักษรจำนวน3ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     ยอด
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0055 ใส่ชื่อเป็นตัวอักษรจำนวน4ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     เก็ท
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  
    
T0056 ใส่ชื่อเป็นตัวอักษรจำนวน12ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์ยยย
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0057 ใส่ชื่อเป็นตัวอักษรจำนวน19ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์ยยยรรดาแาเฟฟฟฟฟฟฟฟฟฟ
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0058 ใส่ชื่อเป็นตัวอักษรจำนวน20ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์ยยยรรดอดดาเฟฟฟฟฟฟฟฟฟฟ
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0059 ใส่ชื่อเป็นตัวอักษรจำนวน21ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์ยยยรรดอดดาเดฟฟฟฟฟฟฟฟฟฟ
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0060 ใส่ชื่อเป็นตัวอักษรจำนวน35ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์ยยยรรดอดดาเดะกกิฟฟฟฟฟฟฟฟฟฟ
    Input Text    ${textbox_surname}    ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0061 ใส่นามสกุลเป็นตัวอักษรจำนวน1ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ด  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0062 ใส่นามสกุลเป็นตัวอักษรจำนวน2ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0063 ใส่นามสกุลเป็นตัวอักษรจำนวน3ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอน  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0064 ใส่นามสกุลเป็นตัวอักษรจำนวน4ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0065 ใส่นามสกุลเป็นตัวอักษรจำนวน12ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสงหพเดวท  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0066 ใส่นามสกุลเป็นตัวอักษรจำนวน29ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}    ดอนแสงหพเดวทะกิดหออฟฟฟฟฟฟฟฟฟฟ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0067 ใส่นามสกุลเป็นตัวอักษรจำนวน30ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสงหพเดวทะกิดหออดฟฟฟฟฟฟฟฟฟฟ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order  

T0068 ใส่นามสกุลเป็นตัวอักษรจำนวน31ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสงหพเดวทะกิดหออดดฟฟฟฟฟฟฟฟฟฟ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart  

T0069 ใส่นามสกุลเป็นตัวอักษรจำนวน35ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสงหเเเเเเเเดเดเดแอเเเฟฟฟฟฟฟฟฟฟฟ  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จ.ชลบุรี 20140  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0070 ใส่ที่อยู่เป็นภาษาไทย
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด อ.พนัสนิคม จชลบุรี 201400  
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0071 ใส่ที่อยู่เป็นภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 Moo 5 Nong Khayat Subdistrict, Phanat Nikhom District, Chonburi Province 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order

T0072 ใส่ที่อยู่เป็นภาษาไทยผสมภาษาอังกฤษ
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 Moo 5 ต.หนองขยาด,จังหวัด Phanat Nikhom, Chonburi Province 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0073 ใส่ที่อยู่เป็นภาษาไทยผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 หมู่ 5 ต.หนองขยาด 春武里府帕那尼洪區 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0074 ใส่ที่อยู่เป็นภาษาอังกฤษผสมภาษาอื่นๆไม่ใช่ภาษาไทยหรือภาษาอังกฤษ
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 Moo 5 Nong Khayat Subdistrict,春武里府帕那尼洪區 20140
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0075 ใส่ที่อยู่เป็นภาษาอื่นนอกเหนือจากภาษาอังกฤษและภาษาไทย
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   17/4 街道 20140 春武里府帕那尼洪區
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0076 ใส่ที่อยู่เป็นตัวอักษรจำนวน1ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ห
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0077 ใส่ที่อยู่เป็นตัวอักษรจำนวน2ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ลพ
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart 

T0078 ใส่ที่อยู่เป็นตัวอักษรจำนวน3ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ตาก
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0079 ใส่ที่อยู่เป็นตัวอักษรจำนวน4ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ตราด
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0080 ใส่ที่อยู่เป็นตัวอักษรจำนวน101ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ะผกเาวะกผย่ืวกผิเวทผกิเนว่ทผกิดงสทกสทดิาทก้ิน่ทผปิสทกสปด้ทสทิสกทสปทแปดเสิทกิดสทปสดิทสหกทด้ิสทกาเด้ทืา
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0081 ใส่ที่อยู่เป็นตัวอักษรจำนวน199ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}   ะผกเาวะกผย่ืวกผิเวทผกิเนว่ทผกิดงสทกสทดิาทก้ิน่ทากดาดิ่อ่ด่ดำรดแแรไก่ก่ก่ดดเด่พำระพะรำไไนำนไพนรไเพรอืแหแปผปิสทกสปด้ทสทิสกทสปทแปดเสิทกิดสทปสดิทสหกทด้ิสทกาเด้ทืาาสาหกาฟแนีาไนรแฟแส้่ืไดแก้เฟแกฟกแด้แกแไก้
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0082 ใส่ที่อยู่เป็นตัวอักษรจำนวน200ตัว
    [Tags]    successful-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}    ะผกเาวะกผย่ืวกผิเวทผกิเนว่ทผกิดงสทกสทดิาทก้ิน่ทากดาดิ่อ่ด่ดำรดแแรไก่ก่ก่ดดเด่พำระพะรำไไนำนไพนรไเพรอืแหแปผปิสทกสปด้ทสทิสกทสปทแปดเสิทกิดสทปสดิทสหกทด้ิสทกาเด้ทืาาสาหกาฟแนีาไนรแฟแส้่ืไดแก้เฟแกฟกแด้แกแไก้เ
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Order 

T0083 ใส่ที่อยู่เป็นตัวอักษรจำนวน201ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}    ะผกเาวะกผย่ืวกผิเวทผกิเนว่ทผกิดงสทกสทดิาทก้ิน่ทากดาดิ่อ่ด่ดำรดแแรไก่ก่ก่ดดเด่พำระพะรำไไนำนไพนรไเพรอืแหแปผปิสทกสปด้ทสทิสกทสปทแปดเสิทกิดสทปสดิทสหกทด้ิสทกาเด้ทืาาสาหกาฟแนีาไนรแฟแส้่ืไดแก้เฟแกฟกแด้แกแไก้หด
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart

T0084 ใส่ที่อยู่เป็นตัวอักษรจำนวน220ตัว
    [Tags]    fail-case
    Open Browser    ${url_form}    chrome
    Sleep    2s
    Click Element   ${button_buy}
    Sleep    2s
    Click Element   ${button_oncash}
    Sleep    2s
    Input Text    ${textbox_name}     จุฑารัตน์
    Input Text    ${textbox_surname}     ดอนแสง  
    Input Text    ${textbox_tel}    0820567554   
    Input Text    ${textbox_addr}    ะผกเาวะกผย่ืวกผิเวทผกิเนว่ทผกิดงสทกสทดิาทก้ิน่ทากดาดิ่อ่ด่ดำรดแแรไก่ก่ก่ดดเด่พำระพะรำไไนำนไพนรไเพรอืแหแปผปิสทกสปด้ทสทิสกทสปทแปดเสิทกิดสเเเเเเเเเเเเเเเเเเเเเฟแนีาไนรแฟแส้่ืไดแก้เฟแกฟกแด้แกแไก้่เเเเเเเเเเเเเเเเเเเเเเเเเเเเ
    Click Element    ${button_order}
    Sleep    4s
    Title Should Be    Cart