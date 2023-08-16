package com.example.demo.service;

import com.example.demo.model.MauSac;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

public interface MauSacService {
     ArrayList<MauSac> getAllMS();

    MauSac detailMS(UUID idMS);

    MauSac addMS(MauSac maMS);

    MauSac updateMS(MauSac mauSac);

    MauSac deleteMS(UUID idMS);

    List<MauSac> searchTenMS(String tenMS);
}
