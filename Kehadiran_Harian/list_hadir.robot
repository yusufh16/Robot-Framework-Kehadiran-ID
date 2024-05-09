*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${kehadiran_harian}    xpath=//*[@id="main-menu-navigation"]/li[8]/a
${tanggal_hadir}    id=curr_date
${click_pilih_divisi}    xpath=//*[@id="configuration"]/div/div/div/div[2]/div/div[2]/div[1]/form/div/span/span[1]/span/span[2]
${search_divisi}    xpath=/html/body/span/span/span[1]
${click_pilih_personalia}    xpath=//*[@id="configuration"]/div/div/div/div[2]/div/div[2]/div[3]/form/div/span/span[1]/span/span[2]

*** Keywords ***
List Kehadiran
    Click Element    ${kehadiran_harian}
    Sleep    2s
    Click Element    ${tanggal_hadir}
    Sleep    2s
    Press Key    ${tanggal_hadir}    MM/DD/YYYY
    Sleep    3s
    Click Element    ${click_pilih_divisi}
    