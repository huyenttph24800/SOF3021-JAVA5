package com.example.demo.service.impl;

import com.example.demo.model.ChiTietSP;
import com.example.demo.repository.ChiTietSpRepository;
import com.example.demo.service.ChiTietSPService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Service
public class ChiTietSPServiceImpl implements ChiTietSPService {
    @Autowired
    private ChiTietSpRepository chiTietSpRepository;

    @Override
    public List<ChiTietSP> getAllCTSP() {
        return chiTietSpRepository.findAll();
    }

    @Override
    public ChiTietSP detailCTSP(UUID idCTSP) {
        return chiTietSpRepository.findById(idCTSP).orElse(null);
    }

    @Override
    public ChiTietSP addCTSP(ChiTietSP chiTietSP) {
        ChiTietSP newCTSP = new ChiTietSP().builder()
                .sanPham(chiTietSP.getSanPham())
                .nsx(chiTietSP.getNsx())
                .mauSac(chiTietSP.getMauSac())
                .dongSP(chiTietSP.getDongSP())
                .namBh(chiTietSP.getNamBh())
                .moTa(chiTietSP.getMoTa())
                .soLuongTon(chiTietSP.getSoLuongTon())
                .giaNhap(chiTietSP.getGiaNhap())
                .giaBan(chiTietSP.getGiaBan())
                .build();
        return chiTietSpRepository.save(newCTSP);
    }

    @Override
    public ChiTietSP updateCTSP(ChiTietSP chiTietSP) {
        ChiTietSP updateCTSP = chiTietSpRepository.findById(chiTietSP.getIdCTSP()).orElse(null).builder()
                .idCTSP(chiTietSP.getIdCTSP())
                .sanPham(chiTietSP.getSanPham())
                .nsx(chiTietSP.getNsx())
                .mauSac(chiTietSP.getMauSac())
                .dongSP(chiTietSP.getDongSP())
                .namBh(chiTietSP.getNamBh())
                .moTa(chiTietSP.getMoTa())
                .soLuongTon(chiTietSP.getSoLuongTon())
                .giaNhap(chiTietSP.getGiaNhap())
                .giaBan(chiTietSP.getGiaBan())
                .build();
        return chiTietSpRepository.save(updateCTSP);
    }

    @Override
    public ChiTietSP removeCTSP(UUID idCTSP) {
        Optional<ChiTietSP> removeCTSP = chiTietSpRepository.findById(idCTSP);
        if(removeCTSP.isPresent()){
            chiTietSpRepository.deleteById(idCTSP);
        }
        return null;
    }
}
