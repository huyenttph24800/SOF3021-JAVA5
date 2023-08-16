package com.example.demo.service.impl;

import com.example.demo.model.ChucVu;
import com.example.demo.model.DongSP;
import com.example.demo.repository.ChucVuRepository;
import com.example.demo.repository.DongSPRepository;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.DongSPService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class DongSPServiceImpl implements DongSPService {

    Random random = new Random();
    @Autowired
    DongSPRepository dongSPRepository;

    @Override
    public ArrayList<DongSP> getAllDongSP() {
        return (ArrayList<DongSP>) dongSPRepository.findAll();
    }

    @Override
    public DongSP detailDongSP(UUID idDongSP) {
        return dongSPRepository.findById(idDongSP).orElse(null);
    }

    @Override
    public DongSP addDongSP(DongSP dongSP) {
        DongSP newDongSP = new DongSP().builder()
                .maDongSP("DongSP" + random.nextInt())
                .tenDongSP(dongSP.getTenDongSP())
                .build();
        return dongSPRepository.save(newDongSP);
    }

    @Override
    public DongSP updateDongSP(DongSP dongSP) {
        DongSP updateDongSP = dongSPRepository.findById(dongSP.getIdDongSP()).orElse(null).builder()
                .idDongSP(dongSP.getIdDongSP())
                .maDongSP(dongSP.getMaDongSP())
                .tenDongSP(dongSP.getTenDongSP())
                .build();
        return dongSPRepository.save(updateDongSP);
    }

    @Override
    public DongSP deleteDongSP(UUID idDongSP) {
        Optional<DongSP> removeDongSP = dongSPRepository.findById(idDongSP);
        if (removeDongSP.isPresent()) {
            dongSPRepository.deleteById(idDongSP);
        }
        return null;
    }

    @Override
    public List<DongSP> searchTenDongSP(String tenDongSP) {
        return dongSPRepository.searchTenDongSP(tenDongSP);
    }
}
