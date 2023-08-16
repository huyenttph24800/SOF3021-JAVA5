package com.example.demo.service.impl;

import com.example.demo.model.KhachHang;

import com.example.demo.repository.KhachHangRepository;
import com.example.demo.service.KhachHangService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class KhachHangServiceImpl implements KhachHangService {

    Random random  = new Random();
    @Autowired
    KhachHangRepository khachHangRepository;

    @Override
    public ArrayList<KhachHang> getAllKH() {

        return (ArrayList<KhachHang>) khachHangRepository.findAll();
    }

    @Override
    public KhachHang detailKhachHang(UUID idKhachHang) {
        return khachHangRepository.findById(idKhachHang).orElse(null);
    }

    @Override
    public KhachHang addKhachHang(KhachHang khachHang) {
        KhachHang newKhachHang = new KhachHang().builder()
                .maKhachHang("KH" + random.nextInt())
                .hoKhachHang(khachHang.getHoKhachHang())
                .tenDemKhachHang(khachHang.getTenDemKhachHang())
                .tenKhachHang(khachHang.getTenKhachHang())
//                .gioiTinh(khachHang.getGioiTinh())
                .ngaySinh(khachHang.getNgaySinh())
                .sdt(khachHang.getSdt())
                .diaChi(khachHang.getDiaChi())
                .thanhPho(khachHang.getThanhPho())
                .quocGia(khachHang.getQuocGia())
//                .userName(khachHang.getUserName())
//                .passWord(khachHang.getPassWord())
                .build();
        return khachHangRepository.save(newKhachHang);
    }

    @Override
    public KhachHang updateKhachHang(KhachHang khachHang) {
        KhachHang updateKhachHang = khachHangRepository.findById(khachHang.getIdKhachHang()).orElse(null).builder()
                .idKhachHang(khachHang.getIdKhachHang())
                .maKhachHang(khachHang.getMaKhachHang())
                .hoKhachHang(khachHang.getHoKhachHang())
                .tenDemKhachHang(khachHang.getTenDemKhachHang())
                .tenKhachHang(khachHang.getTenKhachHang())
//                .gioiTinh(khachHang.getGioiTinh())
                .ngaySinh(khachHang.getNgaySinh())
                .sdt(khachHang.getSdt())
                .diaChi(khachHang.getDiaChi())
                .thanhPho(khachHang.getThanhPho())
                .quocGia(khachHang.getQuocGia())
//                .userName(khachHang.getUserName())
//                .passWord(khachHang.getPassWord())
                .build();
        return khachHangRepository.save(updateKhachHang);
    }

    @Override
    public KhachHang deleteKhachHang(UUID idKhachHang) {
        Optional<KhachHang> removeKhachHang = khachHangRepository.findById(idKhachHang);
        if (removeKhachHang.isPresent()) {
            khachHangRepository.deleteById(idKhachHang);
        }
        return null;
    }

    @Override
    public List<KhachHang> searchTenKhachHang(String tenKhachHang) {
        return khachHangRepository.searchTenKhachHang(tenKhachHang);
    }
}
