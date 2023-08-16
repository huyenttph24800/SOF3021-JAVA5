package com.example.demo.service;

import com.example.demo.model.DongSP;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface DongSPService {
     ArrayList<DongSP> getAllDongSP();

     DongSP detailDongSP(UUID idDongSP);

     DongSP addDongSP(DongSP dongSP);

     DongSP updateDongSP(DongSP dongSP);

     DongSP deleteDongSP(UUID idDongSP);

     List<DongSP> searchTenDongSP(String tenDongSP);



}
