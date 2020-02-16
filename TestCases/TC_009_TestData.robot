*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/UserKeywords.robot

*** Variables ***
${Browser}    Chrome
${Url}    https://www.thetestingworld.com/


*** Test Cases ***
TC_009
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    click element  xpath://a[text()='Login']

    ${max_rows}=  Read Number Of Rows  Sheet1
    ${username}=  Read Excel Data of Cell  Sheet1  1  1
    log to console  ${username}
    : FOR  ${i}  IN RANGE  1  ${max_rows}+1
    \  log to console  ${max_rows}
    \  ${username}=  Read Excel Data of Cell  Sheet1  ${i}  1
    \  log to console  ${username}
    \  ${password}=  Read Excel Data of Cell  Sheet1  ${i}  2
    \  input text  id:username  ${username}
    \  input text  id:password  ${password}
    \  click button  xpath://button[@type='submit']
    \  sleep  5 seconds
    \  click element  xpath://a[text()='Login']