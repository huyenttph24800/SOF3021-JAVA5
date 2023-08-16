package com.example.demo.service.impl;

import com.example.demo.model.CuaHang;
import com.example.demo.model.MauSac;
import com.example.demo.repository.CuaHangRepository;
import com.example.demo.repository.MauSacRepository;
import com.example.demo.service.CuaHangService;
import com.example.demo.service.MauSacService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class MauSacServiceImpl implements MauSacService {
    Random random = new Random();

    @Autowired
    MauSacRepository mauSacRepository;

    @Override
    public ArrayList<MauSac> getAllMS() {

        return (ArrayList<MauSac>) mauSacRepository.findAll();
    }

    @Override
    public MauSac detailMS(UUID idMS) {

        return mauSacRepository.findById(idMS).orElse(null);
    }

    @Override
    public MauSac addMS(MauSac mauSac) {
        MauSac newMauSac = new MauSac().builder()
                .maMS("MS" + random.nextInt())
                .tenMS(mauSac.getTenMS())
                .build();
        return mauSacRepository.save(newMauSac);
    }

    @Override
    public MauSac updateMS(MauSac mauSac) {
        MauSac updateMS = mauSacRepository.findById(mauSac.getIdMS()).orElse(null).builder()
                .idMS(mauSac.getIdMS())
                .maMS(mauSac.getMaMS())
                .tenMS(mauSac.getTenMS())
                .build();
        return mauSacRepository.save(updateMS);
    }

    @Override
    public MauSac deleteMS(UUID idMS) {
        Optional<MauSac> removeMS = mauSacRepository.findById(idMS);
        if (removeMS.isPresent()) {
            mauSacRepository.deleteById(idMS);
        }
        return null;
    }

    @Override
    public List<MauSac> searchTenMS(String tenMS) {

        return mauSacRepository.searchTenMS(tenMS);
    }

    @Scheduled(fixedRate = 1000)
    public void run() {
        System.out.println("xin chào");
    }
}
