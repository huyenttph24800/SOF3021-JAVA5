package com.example.demo.service.impl;

import com.example.demo.model.NhanVien;
import com.example.demo.repository.NhanVienRepository;
import com.example.demo.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class NhanVienServiceImpl implements NhanVienService {
    Random random  = new Random();

    @Autowired
    NhanVienRepository nhanVienRepository;

    @Override
    public ArrayList<NhanVien> getAllNV() {

        return (ArrayList<NhanVien>) nhanVienRepository.findAll();
    }

    @Override
    public NhanVien detailNhanVien(UUID idNhanVien) {
        return nhanVienRepository.findById(idNhanVien).orElse(null);
    }

    @Override
    public NhanVien addNhanVien(NhanVien nhanVien) {
        NhanVien newNhanVien = new NhanVien().builder()
                .maNhanVien("NV" + random.nextInt())
                .hoNhanVien(nhanVien.getHoNhanVien())
                .tenDemNhanVien(nhanVien.getTenDemNhanVien())
                .tenNhanVien(nhanVien.getTenNhanVien())
                .gioiTinh(nhanVien.getGioiTinh())
                .ngaySinh(nhanVien.getNgaySinh())
                .diaChi(nhanVien.getDiaChi())
                .sdt(nhanVien.getSdt())
                .passWord(nhanVien.getPassWord())
                .cuaHang(nhanVien.getCuaHang())
                .chucVu(nhanVien.getChucVu())
                .trangThai(nhanVien.getTrangThai())
                .build();
        return nhanVienRepository.save(newNhanVien);
    }

    @Override
    public NhanVien updateNhanVien(NhanVien nhanVien) {
        NhanVien updateNhanVien = nhanVienRepository.findById(nhanVien.getIdNhanVien()).orElse(null).builder()
                .idNhanVien(nhanVien.getIdNhanVien())
                .maNhanVien(nhanVien.getMaNhanVien())
                .hoNhanVien(nhanVien.getHoNhanVien())
                .tenDemNhanVien(nhanVien.getTenDemNhanVien())
                .tenNhanVien(nhanVien.getTenNhanVien())
                .gioiTinh(nhanVien.getGioiTinh())
                .ngaySinh(nhanVien.getNgaySinh())
                .diaChi(nhanVien.getDiaChi())
                .sdt(nhanVien.getSdt())
                .passWord(nhanVien.getPassWord())
                .cuaHang(nhanVien.getCuaHang())
                .chucVu(nhanVien.getChucVu())
                .trangThai(nhanVien.getTrangThai())
                .build();
        return nhanVienRepository.save(updateNhanVien);
    }

    @Override
    public NhanVien deleteNhanVien(UUID idNhanVien) {
        Optional<NhanVien> removeNhanVien = nhanVienRepository.findById(idNhanVien);
        if(removeNhanVien.isPresent()){
            nhanVienRepository.deleteById(idNhanVien);
        }
        return null;
    }

    @Override
    public List<NhanVien> searchTenNhanVien(String tenNhanVien) {
        return nhanVienRepository.searchTenNhanVien(tenNhanVien);
    }
}
