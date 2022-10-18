*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://katalon-demo-cura.herokuapp.com/

*** Test Cases ***
TestingRadionCekbox
    OPEN BROWSER    ${url}  ${browser}
    maximize browser window
    click link    xpath://a[@id='btn-make-appointment']
    input text    xpath://input[@id='txt-username']     John Doe
    input text    xpath://input[@id='txt-password']     ThisIsNotAPassword
    click button    xpath://button[@id='btn-login']

    element text should be    xpath://h2[normalize-space()='Make Appointment']      Make Appointment

    select radio button    programs     Medicaid    #name/id radio button  value radio button
    select checkbox    hospital_readmission     #name/id

    select from list by label    facility   Hongkong CURA Healthcare Center         #name/id label
    select from list by value       facility        Seoul CURA Healthcare Center        #name/id value


    sleep    5
    close browser


