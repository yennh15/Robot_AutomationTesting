*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
#${Url}    https://www.thetestingworld.com/testings/
${Url}    https://www.thetestingworld.com/
#${Url1}    https://www.google.com/
#${Url}  https://robotframework.org/


*** Test Cases ***
TC_006 Open browser
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    #open browser   ${Url1}    ${Browser}
    #Maximize Browser Window
    #switch browser  1
    #page should contain  VIDEOS11
    page should not contain  VIDEOS