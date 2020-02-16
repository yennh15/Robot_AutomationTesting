*** Settings ***
Library    Selenium2Library
Library  Collections

*** Variables ***


*** Test Cases ***
TC_005
    ${Key_var}=  set variable  log to console
    run keyword  ${Key_var}  yennh15@vpbank.com.vn

    ${var}=  set variable  YES
    run keyword if  '${var}'=='YES'  log to console  yennh15
    run keyword if  '${var}'=='NO'  log to console  yennh4