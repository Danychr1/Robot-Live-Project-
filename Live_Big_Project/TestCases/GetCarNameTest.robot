*** Settings ***
Resource       ../PageObjects/HomePage.robot
Resource        ../Resources/Common.robot
Resource        ../PageObjects/NewCarPage.robot
Resource        ../PageObjects/KiaCarPage.robot
Resource        ../PageObjects/BugattiCarPage.robot
Resource        ../PageObjects/CarBase.robot



Test Teardown    Finish Test Case

*** Keywords ***
Find New Cars
    [Arguments]    ${browser}     ${brandname}     ${carheading}
    launching browser    ${testsiteurl}     ${browser}
    Go to new cars
    IF    "${brandname}"  ==  "toyota"
        Go to Toyota
     ELSE IF    "${brandname}"   == "bugatti"
        Go to Bugatti
     ELSE IF    "${brandname}"   == "kia"
        Go to Kia
        ELSE
        log to console    Invalid car select
    END
    verify car heading    ${carheading}
    get car name
    sleep   2s



*** Variables ***
${testsiteurl}=     https://www.carwale.com/


*** Test Cases ***
Get Cars Name Test ${brandname}     ${browser}      ${carheading}


#*** Test Cases ***
#Find New Cars Test
    #launching browser      ${testsiteurl}     Edge
    #go to new cars page
    #Find new Cars
    #Go to Kia
    #verify kia car heading      Kia Cars
    #Go to Bugatti
    #Verify Bugatti car heading    Bugatti Cars
    #Go to Jaguar
    #verify car heading      Jaguar Cars




    sleep   2s