package com.example.demo.service;

import com.example.demo.model.ChucVu;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface ChucVuService {
     ArrayList<ChucVu> getAllCV();

     ChucVu detailChucVu(UUID idChucVu);

     ChucVu addChucVu(ChucVu chucVu);

     ChucVu updateChucVu(ChucVu chucVu);

     ChucVu deleteChucVu(UUID idChucVu);

     List<ChucVu> searchTenChucVu(String tenChucVu);



}
