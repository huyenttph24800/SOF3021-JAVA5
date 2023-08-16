package com.example.demo.service;

import com.example.demo.model.ChucVu;
import com.example.demo.model.SanPham;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface SanPhamService {
   ArrayList<SanPham> getAllSP();

    SanPham detailSanPham(UUID idSanPham);

    SanPham addSanPham(SanPham sanPham);

    SanPham updateSanPham(SanPham sanPham);

    SanPham deleteSanPham(UUID idSanPham);

    List<SanPham> searchTenSanPham(String tenSanPham);


}
