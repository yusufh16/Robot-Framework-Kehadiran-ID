*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${jadwal_karyawan}    xpath=//*[@id="main-menu-navigation"]/li[5]/a
${tambah_data}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a[2]
${tanggal_jadwal_karyawan}    id=tanggal_jadwal
${click_pilih_karyawan}    xpath=//*[@id="select-option-group"]/span/span[1]/span/ul
${pilih_nama_karyawan}    name=karyawan_id[]
${enter_jadwal}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div
${simpan_jadwal}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[3]/button
${kembali}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[3]/a

*** Keywords ***
Tambah Jadwal Karyawan
    Click Element    ${jadwal_karyawan}
    Sleep    5s
    Click Element    ${tambah_data}
    Sleep    5s
    Press Key    ${tanggal_jadwal_karyawan}    MM/DD/YYYY    #isikan tanggal yang dituju
    Sleep    3s
    Click Element    ${click_pilih_karyawan}
    Sleep    2s
    Select From List By Label    ${pilih_nama_karyawan}    Yusuf Hidayatulloh    #pilih nama karyawan yg akan libur
    Sleep    2s
    Click Element    ${click_pilih_karyawan}
    Click Element    ${simpan_jadwal}
    Sleep    7s