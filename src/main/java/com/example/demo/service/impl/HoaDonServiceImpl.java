package com.example.demo.service.impl;

import com.example.demo.model.HoaDon;
import com.example.demo.repository.HoaDonRepository;
import com.example.demo.service.HoaDonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service
public class HoaDonServiceImpl implements HoaDonService {
    Random random = new Random();
    LocalDate localDate = LocalDate.now();
    @Autowired
    private HoaDonRepository hoaDonRepository;

    @Override
    public List<HoaDon> getAllHD() {
        return hoaDonRepository.findAll();
    }

    @Override
    public HoaDon addHoaDon(HoaDon hoaDon) {
        HoaDon newHoaDon = new HoaDon().builder()
                .khachHang(hoaDon.getKhachHang())
                .nhanVien(hoaDon.getNhanVien())
                .maHoaDon("HD" + random.nextInt())
                .ngayTao(localDate)
                .ngayThanhToan(null)
                .tinhTrang(1)
                .tenNguoiNhan(hoaDon.getTenNguoiNhan())
                .diaChi(hoaDon.getDiaChi())
                .sdt(hoaDon.getSdt())
                .build();
        return hoaDonRepository.save(newHoaDon);
    }

    @Override
    public void huyHoaDon(UUID idHoaDon) {
        hoaDonRepository.huyHoaDon(idHoaDon);
    }

    @Override
    public List<HoaDon> searchHoaDon(String maHoaDon) {
        return hoaDonRepository.searchHoaDon(maHoaDon);
    }
}
