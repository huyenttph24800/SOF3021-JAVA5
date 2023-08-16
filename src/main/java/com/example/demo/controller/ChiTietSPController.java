package com.example.demo.controller;

import com.example.demo.model.*;
import com.example.demo.service.*;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/ctsp/")
public class ChiTietSPController {
    List<ChiTietSP> listChiTietSp = new ArrayList<>();
    List<SanPham> listSanPham = new ArrayList<>();
    List<NSX> listNSX = new ArrayList<>();
    List<MauSac> listMauSac = new ArrayList<>();
    List<DongSP> listDongSP = new ArrayList<>();
    @Autowired
    private ChiTietSPService chiTietSPService;

    @Autowired
    private SanPhamService sanPhamService;

    @Autowired
    private NSXService nsxService;

    @Autowired
    private MauSacService mauSacService;

    @Autowired
    private DongSPService dongSPService;

    @GetMapping("hien-thi")
    public String viewCTSP(Model model) {
        listChiTietSp = chiTietSPService.getAllCTSP();
        model.addAttribute("listChiTietSP", listChiTietSp);
        return "ChiTietSanPham/chi-tiet-sp";
    }

    @GetMapping("view-add")
    public String viewAddCTSP(Model model) {
        listSanPham = sanPhamService.getAllSP();
        listNSX = nsxService.getAllNSX();
        listMauSac = mauSacService.getAllMS();
        listDongSP = dongSPService.getAllDongSP();
        model.addAttribute("addCTSP", new ChiTietSP());
        model.addAttribute("listSanPham", listSanPham);
        model.addAttribute("listNSX", listNSX);
        model.addAttribute("listMS", listMauSac);
        model.addAttribute("listDongSP", listDongSP);
        return "ChiTietSanPham/view-add";
    }

    @PostMapping("add")
    public String addCTSP(@Valid @ModelAttribute("addCTSP") ChiTietSP newChiTietSP,
                          BindingResult result) {
        if (result.hasErrors()) {
            return "ChiTietSanPham/view-add";
        } else {
            chiTietSPService.addCTSP(newChiTietSP);
        }
        return "redirect:/ctsp/hien-thi";
    }

    @GetMapping("delete/{idCTSP}")
    public String deleteCTSP(@PathVariable("idCTSP") UUID idCTSP) {
        chiTietSPService.removeCTSP(idCTSP);
        return "redirect:/ctsp/hien-thi";
    }

    @GetMapping("detail/{idCTSP}")
    public String detailCTSP(Model model,
                             @PathVariable("idCTSP") UUID idCTSP) {
        ChiTietSP detailChiTietSP = chiTietSPService.detailCTSP(idCTSP);
        listSanPham = sanPhamService.getAllSP();
        listNSX = nsxService.getAllNSX();
        listMauSac = mauSacService.getAllMS();
        listDongSP = dongSPService.getAllDongSP();
        model.addAttribute("detailChiTietSP", detailChiTietSP);
        model.addAttribute("listSanPham", listSanPham);
        model.addAttribute("listNSX", listNSX);
        model.addAttribute("listMS", listMauSac);
        model.addAttribute("listDongSP", listDongSP);
        return "ChiTietSanPham/view-update";
    }

    @PostMapping("update")
    public String updateCTSP(@Valid @ModelAttribute("detailChiTietSP") ChiTietSP updateChiTietSP,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "ChiTietSanPham/view-update";
        }
        chiTietSPService.updateCTSP(updateChiTietSP);
        return "redirect:/ctsp/hien-thi";
    }
}
