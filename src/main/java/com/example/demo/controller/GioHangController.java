package com.example.demo.controller;

import com.example.demo.model.GioHang;
import com.example.demo.model.KhachHang;
import com.example.demo.model.NhanVien;
import com.example.demo.service.GioHangService;
import com.example.demo.service.KhachHangService;
import com.example.demo.service.NhanVienService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/gio-hang/")
public class GioHangController {
    List<GioHang> listGioHang = new ArrayList<>();
    List<KhachHang> listKhachHang = new ArrayList<>();
    List<NhanVien> listNhanVien = new ArrayList<>();
    @Autowired
    private GioHangService gioHangService;

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private NhanVienService nhanVienService;

    @GetMapping("hien-thi")
    public String viewGioHang(Model model){
        listGioHang = gioHangService.getAllGH();
        model.addAttribute("listGioHang", listGioHang);
        return "GioHang/gio-hang";
    }
    @GetMapping("view-add")
    public String viewAddGioHang(Model model){
        listKhachHang = khachHangService.getAllKH();
        listNhanVien = nhanVienService.getAllNV();
        model.addAttribute("addGioHang", new GioHang());
        model.addAttribute("listKH", listKhachHang);
        model.addAttribute("listNV", listNhanVien);
        return "GioHang/view-add";
    }
    @PostMapping("add")
    public String addGioHang(@ModelAttribute("addGioHang") GioHang newGioHang){
        gioHangService.addGioHang(newGioHang);
        return "redirect:/gio-hang/hien-thi";
    }
    @GetMapping("delete/{idGioHang}")
    public String huyGioHang(@PathVariable("idGioHang") UUID idGioHang){
        gioHangService.deleteGioHang(idGioHang);
        return "redirect:/gio-hang/hien-thi";
    }
    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("maGioHang") String maGioHang) {
        if (maGioHang.isEmpty()) {
            model.addAttribute("listGioHang", listGioHang);
        } else {
            List<GioHang> searchGioHang = gioHangService.searchMaGioHang(maGioHang);
            model.addAttribute("listGioHang", searchGioHang);
        }
        return "GioHang/gio-hang";
    }
}
