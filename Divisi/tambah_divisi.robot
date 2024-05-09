*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${divisi}    xpath=//*[@id="main-menu-navigation"]/li[7]/a
${tambah_divisi}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[2]/a
${nama_divisi}    name=name
${cari_berdasarkan_nama_IN}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/section/div/div/div/div/div/div/div[1]/input
${cari_berdasarkan_nama_OUT}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/section/div/div/div/div/div/div/div[2]/input
${masukan_semua_karyawan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/section/div/div/div/div/div/div/div[1]/div/button
${keluarkan_semua_karyawan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/section/div/div/div/div/div/div/div[2]/div/button
${pilih_karyawan_divisi}    id=bootstrap-duallistbox-nonselected-list_users[]
${simpan_divisi}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[2]/button

*** Keywords ***
Tambah Divisi
    Click Element     ${divisi}
    Sleep    2s
    Click Element     ${tambah_divisi}
    Sleep    3s
    Input Text        ${nama_divisi}    nama divisi    #isikan nama divisi yang akan dibuat
    Sleep    3s
    Input Text        ${cari_berdasarkan_nama_IN}    jeyden    #nama karyawan
    Sleep    3s
    Press Keys        ${pilih_karyawan_divisi}    Jeyden   
    Sleep    2s
    Click Element     ${simpan_divisi}
    Sleep    7s