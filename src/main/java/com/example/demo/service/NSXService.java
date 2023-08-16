package com.example.demo.service;

import com.example.demo.model.ChucVu;
import com.example.demo.model.NSX;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface NSXService {
    ArrayList<NSX> getAllNSX();

    NSX detailNSX(UUID idNSX);

    NSX addNSX(NSX nsx);

    NSX updateNSX(NSX nsx);

    NSX deleteNSX(UUID idNSX);

    List<NSX> searchTenNSX(String tenNSX);
}
