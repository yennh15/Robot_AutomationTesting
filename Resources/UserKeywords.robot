*** Settings ***
Library  SeleniumLibrary
Library  ../TestData/ReadData.py

*** Keywords ***
Read Number Of Rows
    [Arguments]  ${sheetname}
    ${max_rows}=  fetch_number_of_rows  ${sheetname}
    [Return]  ${max_rows}

Read Excel Data of Cell
    [Arguments]  ${sheetname}  ${row}  ${cell}
    ${data}=  fetch_cell_data  ${sheetname}  ${row}  ${cell}
    [Return]  ${data}
