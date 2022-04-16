*** Settings ***
Test Teardown  Close Browser
Library  Selenium2Library

*** Variables ***
${url_homepage}         http://localhost:3000/
${order_menu_class}     //*[@class="order_menu"]
${add_to_cart}  //*[@id="add-to-cart"]
${cart}					class=Navbar_counter__X7nNH


*** Keywords ***



***Test Cases***
T0001 Open-browser and make order
	Open Browser   ${url_homepage}   chrome
	Click Element  ${order_menu_class}
	Title Should Be  Product
	# Click Element   ${add_to_cart}
	# Click Element  ${cart}
	# Title Should Be   Cart


