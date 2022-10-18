*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://demo.nopcommerce.com/

*** Test Cases ***
TestingInputBox
    OPEN BROWSER    ${url}  ${browser}
    maximize browser window
    title should be    nopCommerce demo store

    click link    xpath://a[@class='ico-login']
    ${"Email_txt"}      set variable    xpath://input[@id='Email']

    element should be visible       ${"Email_txt"}
    element should be enabled       ${"Email_txt"}

    input text    ${"Email_txt"}    aaaaaa@gmail.com
    sleep    5
    clear element text      ${"Email_txt"}
    sleep    10

    close browser
