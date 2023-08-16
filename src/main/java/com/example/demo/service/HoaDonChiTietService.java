package com.example.demo.service;

import com.example.demo.model.HoaDonChiTiet;

import java.util.List;
import java.util.UUID;

public interface HoaDonChiTietService {
    List<HoaDonChiTiet> getAllHoaDonById(UUID idHoaDonChiTiet);


}
