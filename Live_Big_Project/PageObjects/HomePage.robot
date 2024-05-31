*** Settings ***
Library     SeleniumLibrary
Variables    ../Resources/Locator.py


*** Keywords ***

go to new cars page
    mouse over    ${newcar_xpath}
    click element    ${findnewcar_xpath}
    element text should be    ${newcar_header_xpath}        New Cars



Find new Cars
    click element       ${viewmorebrand_xpath}



Find Old Cars

