package com.example.demo.service;

import com.example.demo.model.GioHangChiTiet;

import java.util.List;
import java.util.UUID;

public interface GioHangChiTietService {
    List<GioHangChiTiet> getAllGioHangById(UUID idGioHangChiTiet);

    void addToCart(UUID idGioHang, UUID chiTietSP, Integer soLuong, Double donGia);
}
