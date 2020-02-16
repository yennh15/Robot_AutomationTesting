*** Settings ***
Library  SeleniumLibrary
Library  ../ExternalKeywords/UserKeywords.py

*** Variables ***


*** Keywords ***
Open Browser and Maximize
    [Arguments]  ${Url}    ${Browser}
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    ${title}=  get title
    [Return]  ${title}

Create Function at Runtime
    create_folder
