*** Settings ***
Library     SeleniumLibrary
Variables    ../Resources/Locator.py


*** Keywords ***

verify kia car heading
    [Arguments]     ${carheading}
    element text should be      ${carheading_xpage}    ${carheading}

