*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${klik_karyawan}    xpath=//*[@id="main-menu-navigation"]/li[4]/a/span
${hari_kerja}    xpath=//*[@id="main-menu-navigation"]/li[4]/ul/li[2]/a

*** Keywords ***
Hari Keja
    Click Element    ${klik_karyawan}
    Sleep    3s
    Click Element    ${hari_kerja}
    Sleep    3s
    