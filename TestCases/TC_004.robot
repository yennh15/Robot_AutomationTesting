*** Settings ***
Library    SeleniumLibrary
Library  Collections

*** Variables ***


*** Test Cases ***
TC_004
    : FOR  ${i}  IN RANGE  1  10
    \   log to console  ${i}

    @{List1}  create list  Hello  Test  Test2   Test3
    : FOR  ${i}  IN  @{List1}
    \   log to console  ${i}

*** Keywords ***
