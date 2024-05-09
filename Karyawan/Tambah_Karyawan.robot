*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${tambah_karyawan}    xpath=//*[@id="configuration"]/div/div/div/div[1]/div[3]/a
${nama_karyawan}    id=tenantName
${click_divisi_baru}    id=select2-group_id-container
${input_text_divisi}    xpath=/html/body/span/span/span[1]/input
${enter_pilih_divisi}    xpath=/html/body/span/span/span[1]/input    #Press Keys    ${enter_pilih_divisi}    RETURN
${pilih_divisi_dropdown}    id=group_id    #untuk pilih divisi yang sudah ada menggunakan Select From List By Label
${click_jabatan_baru}    id=select2-jabatan_id-container
${input_text_jabatan}    xpath=/html/body/span/span/span[1]/input
${enter_pilih_jabatan}    xpath=/html/body/span/span/span[1]/input    ##Press Keys    ${enter_pilih_jabatan}    RETURN
${pilih_jabatan_dropdown}    id=jabatan_id    #untuk pilih lokasi yang sudah ada menggunakan Select From List By Label
${click_lokasi_cabang}    id=select-option-group
${pilih_lokasi_cabang}    id=js-pgroup    # Select From List By Label    ${pilih_lokasi_cabang}    Nama lokasi dipilihan
${enter_lokasi}    xpath=//*[@id="select2-js-pgroup-result-xyzp-31"]
${username_karyawan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[5]/input
${email_karyawan}    name=email
${password_karyawan}    name=password
${foto_karyawan}    id=photo
${alamat}    id=alamat
${no_telp}    name=telp
${no_induk}    id=tenantno_induk_karyawan
${tanggal_lahir}    id=tgllahir
${tempat_lahir}    id=tempat_lahir
${gaji}    id=gaji
${no_rek}    id=no_rekening
${jam_kerja}    id=jam_kerja
${simpan_tambah_karyawan}    xpath=/html/body/div[3]/div/div[2]/section/div/div/div/div[2]/div/form/div[17]/button

*** Keywords ***
Tambah Karyawan
    Click Element    ${tambah_karyawan}
    Sleep    3s
    Input Text    ${nama_karyawan}    pembayaran 16
    Sleep    2s
    Click Element    ${click_divisi_baru}
    Sleep    2s
    Select From List By Label    ${pilih_divisi_dropdown}    Karyawan
    Sleep    2s
    Press Keys    ${enter_pilih_divisi}    RETURN
    Sleep    2s
    Click Element    ${click_jabatan_baru}
    Sleep    2s
    Input Text    ${input_text_jabatan}    Employed
    Sleep    2s
    Press Keys    ${enter_pilih_jabatan}    RETURN
    Sleep    2s
    Click Element    ${username_karyawan}
    Input Text    ${username_karyawan}    pembayaran16
    Sleep    2s
    Input Text    ${email_karyawan}    pembayaran16@kehadiran.id
    Sleep    3s
    Input Text    ${password_karyawan}    admin123
    Sleep    3s
    Input Text    ${alamat}    alamat karyawan
    Sleep    3s
    Input Text    ${no_telp}    00016
    Sleep    2s
    Input Text    ${no_induk}    Byr-0016
    Sleep    2s
    Press Key    ${tanggal_lahir}    01/01/2001
    Sleep    2s
    Input Text    ${tempat_lahir}    tempat lahir
    Sleep    2s
    Input Text    ${gaji}    3000000
    Sleep    2s
    Click Element    ${simpan_tambah_karyawan}
    Sleep    10s
