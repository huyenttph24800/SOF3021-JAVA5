package com.example.demo.service.impl;

import com.example.demo.model.CuaHang;
import com.example.demo.repository.CuaHangRepository;
import com.example.demo.service.CuaHangService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;

@Service
public class CuaHangServiceImpl implements CuaHangService {
    Random random = new Random();
    @Autowired
   CuaHangRepository cuaHangRepository;

    @Override
    public ArrayList<CuaHang> getAllCH() {
        return (ArrayList<CuaHang>) cuaHangRepository.findAll();
    }
    @Override
    public CuaHang detailCuaHang(UUID idCuaHang) {
        return cuaHangRepository.findById(idCuaHang).orElse(null);
    }

    @Override
    public CuaHang addCuaHang(CuaHang cuaHang) {
        CuaHang newCuaHang = new CuaHang().builder()
                .maCuaHang("KH" + random.nextInt())
                .tenCuaHang(cuaHang.getTenCuaHang())
                .diaChi(cuaHang.getDiaChi())
                .thanhPho(cuaHang.getThanhPho())
                .quocGia(cuaHang.getQuocGia())
                .build();
        return cuaHangRepository.save(newCuaHang);
    }

    @Override
    public CuaHang updateCuaHang(CuaHang cuaHang) {
        CuaHang updateCuaHang = cuaHangRepository.findById(cuaHang.getIdCuaHang()).orElse(null).builder()
                .idCuaHang(cuaHang.getIdCuaHang())
                .maCuaHang(cuaHang.getMaCuaHang())
                .tenCuaHang(cuaHang.getTenCuaHang())
                .diaChi(cuaHang.getDiaChi())
                .thanhPho(cuaHang.getThanhPho())
                .quocGia(cuaHang.getQuocGia())
                .build();
        return cuaHangRepository.save(updateCuaHang);
    }

    @Override
    public CuaHang deleteCuaHang(UUID idCuaHang) {
        Optional<CuaHang> removeCuaHang = cuaHangRepository.findById(idCuaHang);
        if (removeCuaHang.isPresent()) {
            cuaHangRepository.deleteById(idCuaHang);
        }
        return null;
    }

    @Override
    public List<CuaHang> searchTenCuaHang(String tenCuaHang) {
        return cuaHangRepository.searchTenCuaHang(tenCuaHang);
    }
}
