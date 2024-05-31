*** Settings ***
Resource       ../PageObjects/HomePage.robot
Resource        ../Resources/Common.robot
Resource        ../PageObjects/NewCarPage.robot
Resource        ../PageObjects/KiaCarPage.robot
Resource        ../PageObjects/BugattiCarPage.robot
Resource        ../PageObjects/CarBase.robot



Test Teardown    Finish Test Case


*** Variables ***
${testsiteurl}=     https://www.carwale.com/

*** Test Cases ***
Find New Cars Test
    launching browser      ${testsiteurl}     Edge
    go to new cars page
    Find new Cars
    #Go to Kia
    #verify kia car heading      Kia Cars
    #Go to Bugatti
    #Verify Bugatti car heading    Bugatti Cars
    Go to Jaguar
    verify car heading      Jaguar Cars




    sleep   2s