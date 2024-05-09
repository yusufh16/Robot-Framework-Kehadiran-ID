*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${profile}    xpath=/html/body/nav/div/div[2]/div/ul[2]/li/a
${edit_profile}    xpath=//*[@id="navbar-mobile"]/ul[2]/li/div[2]/a[1]
${nama_tenant}    name=name
${alamat}    name=alamat
${no_telepon}    name=telp
${foto_profile}    name=photo
${jarak_presensi}    name=jarak_absen
${latitude}    name=latitude
${longitude}    name=longitude
${toleransi_lembur}    name=toleransi_lembur
${maksimal_toleransi_lembur}    name=maksimal_lembur
${default_jam_kerja_karyawan}    name=default_jam_kerja
${hosting_url}    name=satelite_url
${api_key}    name=api_key
${presensi_mobile}    xpath=//*[@id="bootstrap-switch-toggle"]/div/div

*** Keywords ***
Edit Profile
    Click Element    ${profile}
    Sleep    3s
    Click Link    ${edit_profile}
    Sleep    2s
    Input Text    ${nama_tenant}    ucup
    Sleep    2s
    Input Text    ${alamat}    jalan baharudin
    Sleep    2s
    Input Text    ${no_telepon}    12345666
    Sleep    2s
    Choose File   ${foto_profile}    ${CURDIR}/baby Iron Man.jpeg
    Sleep    2s
    Input Text    ${jarak_presensi}    100000
    Sleep    2s
    Input Text    ${latitude}    -6.8953058
    Sleep    2s
    Input Text    ${longitude}    107.5422075
    Sleep    2s
    Input Text    ${toleransi_lembur}    3
    Sleep    2s
    Input Text    ${maksimal_toleransi_lembur}    120
    Sleep    2s
    Input Text    ${default_jam_kerja_karyawan}    9
    Sleep    2s
    Click Element    ${presensi_mobile}
    Sleep    3s
