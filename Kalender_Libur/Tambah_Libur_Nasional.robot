*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${kalender_libur}    xpath=//*[@id="main-menu-navigation"]/li[6]/a
${tambah_data_libur}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a
${nama_hari_libur}    name=nama
${tanggal_libur_nasional}    id=tanggal
${simpan_libur_nasional}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[3]/button

*** Keywords ***
Libur Nasional
    Click Element    ${kalender_libur}
    Sleep    3s
    Click Element    ${tambah_data_libur}
    Sleep    3s
    Input Text    ${nama_hari_libur}    Lebaran H1    #isikan nama libur nasional
    Sleep    3s
    Press Key    ${tanggal_libur_nasional}    04/22/2023    #isikan tanggal hari libur nasional
    Sleep    3s
    Click Element    ${simpan_libur_nasional}
    Sleep    7s