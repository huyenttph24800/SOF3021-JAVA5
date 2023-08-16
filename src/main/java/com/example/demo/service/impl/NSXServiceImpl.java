package com.example.demo.service.impl;

import com.example.demo.model.ChucVu;
import com.example.demo.model.NSX;
import com.example.demo.repository.ChucVuRepository;
import com.example.demo.repository.NSXRepository;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.NSXService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.awt.*;
import java.util.*;
import java.util.List;

@Service
public class NSXServiceImpl implements NSXService {

    Random random = new Random();
    @Autowired
    NSXRepository nsxRepository;

    @Override
    public ArrayList<NSX> getAllNSX() {
        return (ArrayList<NSX>) nsxRepository.findAll();
    }

    @Override
    public NSX detailNSX(UUID idNSX)
    {
        return nsxRepository.findById(idNSX).orElse(null);
    }

    @Override
    public NSX addNSX(NSX nsx) {
        NSX newNSX = new NSX().builder()
                .maNSX("NSX" + random.nextInt())
                .tenNSX(nsx.getTenNSX())
                .build();
        return nsxRepository.save(newNSX);
    }

    @Override
    public NSX updateNSX(NSX nsx) {
        NSX updateNSX = nsxRepository.findById(nsx.getIdNSX()).orElse(null).builder()
                .idNSX(nsx.getIdNSX())
                .maNSX(nsx.getMaNSX())
                .tenNSX(nsx.getTenNSX())
                .build();
        return nsxRepository.save(updateNSX);
    }

    @Override
    public NSX deleteNSX(UUID idNSX) {
        Optional<NSX> removeNSX = nsxRepository.findById(idNSX);
        if (removeNSX.isPresent()) {
            nsxRepository.deleteById(idNSX);
        }
        return null;
    }

    @Override
    public List<NSX> searchTenNSX(String tenNSX)
    {
        return nsxRepository.searchTenNSX(tenNSX);
    }
}
