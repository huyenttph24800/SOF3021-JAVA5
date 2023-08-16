package com.example.demo.service;


import com.example.demo.model.NhanVien;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface NhanVienService {
    public ArrayList<NhanVien> getAllNV();

    NhanVien detailNhanVien(UUID idNhanVien);

    NhanVien addNhanVien(NhanVien nhanVien);

    NhanVien updateNhanVien(NhanVien nhanVien);

    NhanVien deleteNhanVien(UUID idNhanVien);

    List<NhanVien> searchTenNhanVien(String tenNhanVien);

}
