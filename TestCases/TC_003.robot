*** Settings ***
Library    SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC_003
    ${List1}  create list  Hello  Test  Test2   Test3
    ${list_length}  get length  ${List1}
    log to console  ${list_length}
    ${list_data}=  get from list  ${List1}  3
    log to console  ${list_data}
*** Keywords ***
