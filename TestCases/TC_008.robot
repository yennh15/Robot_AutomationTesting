*** Settings ***
Library   SeleniumLibrary
Resource  ../Resources/Resource_001.robot
Library  ../ExternalKeywords/Locators.py

*** Variables ***
${Browser}    Chrome
${Url}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_006 Open browser
    #${resp}=  Open Browser and Maximize    ${Url}  ${Browser}
    #log  ${resp}
    #Enter username password email  yennh15  1122  yennh15@vpbank.com.vn
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    #Create Function at Runtime
    ${user_name_locator}=  Read element locator  Registration.User_name_textbox
    Input Text  name:${user_name_locator}  yennh15
#    Input Text  name:${user_name_locator}  ${username}


*** Keywords ***
Read element locator
    [Arguments]  ${location}
    ${result}=  read_locator_from_json  ${location}
    [return]  ${result}

#Enter username password email
#    [Arguments]  ${username}  ${password}  ${email}
#    ${user_name_locator}=  Read element locator  Registration.User_name_textbox
#    Input Text  name:fld_username  ${username}
#    Input Text  xpath://input[@name='fld_email']  ${email}
#    Input Text  name:fld_password  ${password}

