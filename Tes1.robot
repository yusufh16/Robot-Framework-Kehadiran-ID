*** Settings ***
Library    SeleniumLibrary
Resource   Landing_Page/web.robot
Resource   Landing_Page/Scroll.robot
Resource   Landing_Page/kebijakan_privasi.robot
Resource   Login_Kehadiran/loginkehadiran.robot
Resource   Edit_Profile/Edit_Profile.robot
Resource   Lokasi_Cabang/Daftar_Lokasi_Cabang.robot
Resource   Lokasi_Cabang/Tambah_Lokasi.robot
Resource   Lokasi_Cabang/Detail_Lokasi.robot
Resource   Lokasi_Cabang/Edit_Lokasi.robot
Resource   Karyawan/Personalia.robot
Resource   Karyawan/Tambah_Karyawan.robot
Resource   Karyawan/Hari_Kerja.robot
Resource   Karyawan/Tambah_Hari_Kerja.robot
Resource   Jadwal_Karyawan/Tambah_data.robot
Resource   Jadwal_Karyawan/Pengajuan_Tukar_Jadwal.robot
Resource   Kalender_Libur/Tambah_Libur_Nasional.robot
Resource   Divisi/tambah_divisi.robot


*** Test Cases ***
Kehadiran ID
    Landing Page    
    login kehadiran