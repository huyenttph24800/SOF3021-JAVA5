package com.example.demo.service;

import com.example.demo.model.HoaDon;

import java.util.List;
import java.util.UUID;

public interface HoaDonService {
    List<HoaDon> getAllHD();

    HoaDon addHoaDon(HoaDon hoaDon);

    void huyHoaDon(UUID idHoaDon);

    List<HoaDon> searchHoaDon(String maHoaDon);
}
