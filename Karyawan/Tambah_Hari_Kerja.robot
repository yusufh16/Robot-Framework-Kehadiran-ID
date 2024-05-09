*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tambah_hari_kerja}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a
${klik_tahun_bulan}    id=tahun_bulan
${jumlah_hari_kerja}    id=jumlah_hari_kerja
${click_pilih_karyawan}    xpath=//*[@id="select-option-group"]/span/span[1]/span/ul
${pilih_karyawan}    name=karyawan[]
${enter_hari_kerja}    xpath=//*[@id="select-option-group"]/span/span[1]/span/ul
${simpan_hari_kerja}    xpath=//*[@id="configuration"]/div/div/div/div[2]/div/form/div[4]/button


*** Keywords ***
Tambah Hari Kerja
        Click Element    ${tambah_hari_kerja}
        Sleep    3s
        Click Element    ${klik_tahun_bulan}
        Sleep    3s
        Press Key    ${klik_tahun_bulan}    Mei
        Sleep    3s
        Input Text    ${jumlah_hari_kerja}    27
        Sleep    3s
        Click Element    ${click_pilih_karyawan}
        Sleep    3s
        Select From List By Label    ${pilih_karyawan}    CS
        Sleep    3s
        Select From List By Label    ${pilih_karyawan}    Amara
        Sleep    3s    
        Click Element    ${click_pilih_karyawan}
        Sleep    2s
        Click Element    ${simpan_hari_kerja}
        Sleep    7s
        