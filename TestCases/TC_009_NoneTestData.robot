*** Settings ***
Library  SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${Url}    https://www.thetestingworld.com/


*** Test Cases ***
TC_009
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    click element  xpath://a[text()='Login']
    input text  id:username  Testing
    input text  id:password  hello1234
    click button  xpath://button[@type='submit']
    sleep  5 seconds