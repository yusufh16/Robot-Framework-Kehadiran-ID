*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Daftar_Lokasi_Cabang}    xpath=//*[@id="main-menu-navigation"]/li[2]/a

*** Keywords ***
Lokasi Cabang
    Click Element    ${Daftar_Lokasi_Cabang}
    Sleep    2s