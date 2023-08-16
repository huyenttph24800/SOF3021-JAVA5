package com.example.demo.service;

import com.example.demo.model.CuaHang;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface CuaHangService {
    public ArrayList<CuaHang> getAllCH();

    CuaHang detailCuaHang(UUID idCuaHang);

    CuaHang addCuaHang(CuaHang cuaHang);

    CuaHang updateCuaHang(CuaHang cuaHang);

    CuaHang deleteCuaHang(UUID idCuaHang);

    List<CuaHang> searchTenCuaHang(String tenCuaHang);
}
