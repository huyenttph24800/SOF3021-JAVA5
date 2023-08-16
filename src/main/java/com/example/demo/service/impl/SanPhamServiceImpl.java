package com.example.demo.service.impl;

import com.example.demo.model.ChucVu;
import com.example.demo.model.SanPham;
import com.example.demo.repository.ChucVuRepository;
import com.example.demo.repository.SanPhamRepository;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.SanPhamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class SanPhamServiceImpl implements SanPhamService {

    Random random = new Random();
    @Autowired
    SanPhamRepository sanPhamRepository;

    @Override
    public ArrayList<SanPham> getAllSP() {
        return (ArrayList<SanPham>) sanPhamRepository.findAll();
    }

    @Override
    public SanPham detailSanPham(UUID idSanPham) {
        return sanPhamRepository.findById(idSanPham).orElse(null);
    }

    @Override
    public SanPham addSanPham(SanPham sanPham) {
        SanPham newSanPham = new SanPham().builder()
                .maSanPham("SP" + random.nextInt())
                .tenSanPham(sanPham.getTenSanPham())
                .build();
        return sanPhamRepository.save(newSanPham);
    }

    @Override
    public SanPham updateSanPham(SanPham sanPham) {
        SanPham updateSanPham = sanPhamRepository.findById(sanPham.getIdSanPham()).orElse(null).builder()
                .idSanPham(sanPham.getIdSanPham())
                .maSanPham(sanPham.getMaSanPham())
                .tenSanPham(sanPham.getTenSanPham())
                .build();
        return sanPhamRepository.save(updateSanPham);
    }

    @Override
    public SanPham deleteSanPham(UUID idSanPham) {
        Optional<SanPham> removeSanPham = sanPhamRepository.findById(idSanPham);
        if (removeSanPham.isPresent()) {
            sanPhamRepository.deleteById(idSanPham);
        }
        return null;
    }

    @Override
    public List<SanPham> searchTenSanPham(String tenSanPham) {
        return sanPhamRepository.searchTenSanPham(tenSanPham);
    }
}
