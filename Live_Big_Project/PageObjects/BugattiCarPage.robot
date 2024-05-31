*** Settings ***
Library     SeleniumLibrary
Variables    ../Resources/Locator.py


*** Keywords ***

verify Bugatti car heading
    [Arguments]     ${Carheading}
    element text should be      ${Carheading_xpage}    ${Carheading}
