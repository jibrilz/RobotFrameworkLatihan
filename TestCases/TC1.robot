*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
LoginTest
    OPEN BROWSER    ${url}  ${browser}
    maximize browser window
    LogintoApplication
    close browser

*** Keywords ***
LogintoApplication
    click link    xpath://a[@class='ico-login']
    input text    xpath://input[@id='Email']    abcdedfgg
    input text    xpath://input[@id='Password']     34553566cls
    click button    xpath://button[normalize-space()='Log in']
