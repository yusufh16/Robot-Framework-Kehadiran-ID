*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${daftar_jabatan_posisi}    xpath=//*[@id="main-menu-navigation"]/li[3]/a

*** Keywords ***
Daftar Jabatan/Posisi
    Click Link    ${daftar_jabatan_posisi}
    Sleep    3s