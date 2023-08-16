package com.example.demo.service;

import com.example.demo.model.ChiTietSP;

import java.util.List;
import java.util.UUID;

public interface ChiTietSPService {
    List<ChiTietSP> getAllCTSP();

    ChiTietSP detailCTSP(UUID idCTSP);

    ChiTietSP addCTSP(ChiTietSP chiTietSP);

    ChiTietSP updateCTSP(ChiTietSP chiTietSP);

    ChiTietSP removeCTSP(UUID idCTSP);
}
