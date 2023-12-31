package com.example.demo.service;

import com.example.demo.model.GioHang;

import java.util.List;
import java.util.UUID;

public interface GioHangService {
    List<GioHang> getAllGH();

    GioHang detailGioHang(UUID idGioHang);

    GioHang addGioHang(GioHang gioHang);

    GioHang updateGioHang(GioHang gioHang);

    void deleteGioHang(UUID idGioHang);

    List<GioHang> searchMaGioHang(String maGioHang);
}
