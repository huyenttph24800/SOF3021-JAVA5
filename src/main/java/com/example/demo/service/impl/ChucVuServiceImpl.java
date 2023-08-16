package com.example.demo.service.impl;

import com.example.demo.model.ChucVu;
import com.example.demo.repository.ChucVuRepository;
import com.example.demo.service.ChucVuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class ChucVuServiceImpl implements ChucVuService {

    Random random = new Random(); //
    @Autowired
    ChucVuRepository chucVuRepository;

    @Override
    public ArrayList<ChucVu> getAllCV() {
        return (ArrayList<ChucVu>) chucVuRepository.findAll();
    }

    @Override
    public ChucVu detailChucVu(UUID idChucVu) {
        return chucVuRepository.findById(idChucVu).orElse(null);
    }

    @Override
    public ChucVu addChucVu(ChucVu chucVu) {
        ChucVu newChucVu = new ChucVu().builder()
                .maChucVu("CV" + random.nextInt())
                .tenChucVu(chucVu.getTenChucVu())
                .build();
        return chucVuRepository.save(newChucVu);
    }

    @Override
    public ChucVu updateChucVu(ChucVu chucVu) {
        ChucVu updateChucVu = chucVuRepository.findById(chucVu.getIdChucVu()).orElse(null).builder()
                .idChucVu(chucVu.getIdChucVu())
                .maChucVu(chucVu.getMaChucVu())
                .tenChucVu(chucVu.getTenChucVu())
                .build();
        return chucVuRepository.save(updateChucVu);
    }

    @Override
    public ChucVu deleteChucVu(UUID idChucVu) {
        Optional<ChucVu> removeChucVu = chucVuRepository.findById(idChucVu);
        if (removeChucVu.isPresent()) {
            chucVuRepository.deleteById(idChucVu);
        }
        return null;
    }

    @Override
    public List<ChucVu> searchTenChucVu(String tenChucVu) {
        return chucVuRepository.searchTenChucVu(tenChucVu);
    }
}
