*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
${Url}    https://www.thetestingworld.com/testings/


*** Test Cases ***
TC_001 Open browser
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed  2seconds
    Input Text  name:fld_username  yennh15
    Input Text  xpath://input[@name='fld_email']  yennh15@gmail.com.vn
    Select Radio Button  add_type  office
    Select Checkbox  xpath://input[@type='checkbox']
    Select From List By Index  xpath://select[@name='sex']  2
    Select From List By Value  xpath://select[@name='sex']  1
    Select From List By Label  xpath://select[@name='sex']  Female
    #Click Link  xpath://a[text()='Read Detail']
    #Close Browser

