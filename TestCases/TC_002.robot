*** Settings ***
Library    SeleniumLibrary

*** Variables ***


*** Test Cases ***
TC_002
    ${Var1}=  set variable  Hello World
    log to console  ${Var1}

*** Keywords ***

