*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${klik_karyawan}    xpath=//*[@id="main-menu-navigation"]/li[4]/a/span
${personalia}    xpath=/html/body/div[2]/div/ul/li[4]/ul/li[1]/a

*** Keywords ***
Personalia
    
    Click Element    ${klik_karyawan}
    Sleep    2s
    Click Element    ${personalia}
    Sleep    5s