*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${jadwal_karyawan}    xpath=//*[@id="main-menu-navigation"]/li[5]/a
${pengajuan_tukar_jadwal}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a[1]
${show}    xpath=//*[@id="DataTables_Table_0_length"]/label/select
${approve}    xpath=//*[@id="DataTables_Table_0"]/tbody/tr[11]/td[4]/a[1]
${decline}    xpath=//*[@id="DataTables_Table_0"]/tbody/tr[12]/td[4]/a[2]

*** Keywords ***
Pengajuan Tukar Jadwal
    Click Element    ${jadwal_karyawan}
    Sleep    3s
    Click Element    ${pengajuan_tukar_jadwal}
    Sleep    3s
    Click Element    ${show}
    Sleep    2s
    Select From List By Label    ${show}    100
    Sleep    2s
    Click Element    ${approve}
    Sleep    3s
    Click Element    ${decline}
    Sleep    3s
