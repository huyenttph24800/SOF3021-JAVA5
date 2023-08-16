package com.example.demo.service.impl;

import com.example.demo.model.GioHang;
import com.example.demo.repository.GioHangRepository;
import com.example.demo.service.GioHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.List;
import java.util.Random;
import java.util.UUID;

@Service
public class GioHangServiceImpl implements GioHangService {
    Random random = new Random();
    LocalDate localDate = LocalDate.now();
    @Autowired
    private GioHangRepository gioHangRepository;


    @Override
    public List<GioHang> getAllGH() {
        return gioHangRepository.findAll();
    }

    @Override
    public GioHang detailGioHang(UUID idGioHang) {
        return gioHangRepository.findById(idGioHang).orElse(null);
    }

    @Override
    public GioHang addGioHang(GioHang gioHang) {
        GioHang newGioHang = new GioHang().builder()
                .khachHang(gioHang.getKhachHang())
                .nhanVien(gioHang.getNhanVien())
                .maGioHang("GH" + random.nextInt())
                .ngayTao(localDate)
                .ngayThanhToan(null)
                .tenNguoiNhan(gioHang.getTenNguoiNhan())
                .diaChi(gioHang.getDiaChi())
                .sdt(gioHang.getSdt())
                .tinhTrang(0)
                .build();
        return gioHangRepository.save(newGioHang);
    }

    @Override
    public GioHang updateGioHang(GioHang gioHang) {
        GioHang updateGioHang = gioHangRepository.findById(gioHang.getIdGioHang()).orElse(null).builder()
                .idGioHang(gioHang.getIdGioHang())
                .khachHang(gioHang.getKhachHang())
                .nhanVien(gioHang.getNhanVien())
                .maGioHang(gioHang.getMaGioHang())
                .ngayTao(gioHang.getNgayTao())
                .ngayThanhToan(localDate)
                .tenNguoiNhan(gioHang.getTenNguoiNhan())
                .diaChi(gioHang.getDiaChi())
                .sdt(gioHang.getSdt())
                .tinhTrang(gioHang.getTinhTrang())
                .build();
        return null;
    }

    @Override
    public void deleteGioHang(UUID idGioHang) {
        gioHangRepository.huyGioHang(idGioHang);
    }

    @Override
    public List<GioHang> searchMaGioHang(String maGioHang) {
        return gioHangRepository.searchMaGH(maGioHang);
    }
}
