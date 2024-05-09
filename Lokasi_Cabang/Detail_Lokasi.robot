*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Detail_lokasi}    xpath=//*[@id="lokasi-table"]/tbody/tr[2]/td[5]/a[1]
${kembali}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[1]/div/a

*** Keywords ***
Detail Lokasi
    Click Element    ${Detail_lokasi}
    Sleep    5s
    Click Element    ${kembali}
    Sleep    3s