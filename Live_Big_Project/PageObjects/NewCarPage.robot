*** Settings ***
Library     SeleniumLibrary
Variables    ../Resources/Locator.py


*** Keywords ***
Go to Kia
    click element    ${kiacar_xpath}

Go to Toyota
    click element    ${toyotacar_xpath}

Go to Audi
    click element    ${audicar_xpath}

Go to Skoda
    click element    ${skodacar_xpath}

Go to Hyundai
    click element    ${hyundaicar_xpath}

Go to Volvo
    click element    ${volvocar_xpath}

Go to Nissan
    click element    ${nissancar_xpath}

Go to Jaguar
    click element    ${jaguarcar_xpath}

Go to Lotus
    click element    ${lotuscar_xpath}

Go to Bugatti
    click element    ${bugatticar_xpath}