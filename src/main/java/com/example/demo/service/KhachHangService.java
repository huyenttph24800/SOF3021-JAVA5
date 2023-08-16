package com.example.demo.service;


import com.example.demo.model.KhachHang;


import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface KhachHangService {
     ArrayList<KhachHang> getAllKH();


    KhachHang detailKhachHang(UUID idKhachHang);

    KhachHang addKhachHang(KhachHang khachHang);

    KhachHang updateKhachHang(KhachHang khachHang);

    KhachHang deleteKhachHang(UUID idKhachHang);

    List<KhachHang> searchTenKhachHang(String tenKhachHang);

}
