*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Browser}    Chrome
#${Url}    https://www.thetestingworld.com/testings/
${Url}    https://www.thetestingworld.com/


*** Test Cases ***
TC_006 Open browser
    Open Browser   ${Url}    ${Browser}
    Maximize Browser Window
    #Set Selenium Speed  2 seconds
    #sleep   10 seconds
    #set selenium timeout  20 seconds
    #${tm}=  get selenium timeout
    #log to console  ${tm}
    #wait until page contains  Testing
    #set selenium implicit wait  20 seconds
    #Input Text  name:fld_username  yennh15
    #Input Text  xpath://input[@name='fld_email']  yennh15@gmail.com.vn
    #capture page screenshot  ./Snapshots/TC_006.png
    #open browser  https://www.google.com/  ${Browser}
    #close all browsers
    #go to  https://www.google.com/
    #${Url1}=  get location
    #log to console  ${Url1}
    #go back
    #${Url1}=  get location
    #log to console  ${Url1}
    #execute javascript  window.scrollTo(0,1000)

    #open context menu  xpath://span[text()='VIDEOS ']
    #double click element  xpath://a[text()='Login']
    #mouse down  xpath://a[text()='Login']
    #mouse up  xpath://a[text()='Login']
    ##mouse over  xpath://span[text()='VIDEOS ']
    #click link  xpath://a[text()='Login']
    #press key  name:username  hello
    #press key  name:username  \\13
    #sleep  10 seconds
    set selenium timeout  10 seconds
    wait util element contains
    wait until page contains element  xpath://span[contains(text(),'VIDEOS')]
    click element  xpath://span[contains(text(),'VIDEOS')]

