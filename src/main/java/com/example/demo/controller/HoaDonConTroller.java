package com.example.demo.controller;

import com.example.demo.model.HoaDon;
import com.example.demo.model.KhachHang;
import com.example.demo.model.NhanVien;
import com.example.demo.service.HoaDonService;
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
@RequestMapping("/hoa-don/")
public class HoaDonConTroller {
    List<HoaDon> listHoaDon = new ArrayList<>();
    List<KhachHang> listKhachHang = new ArrayList<>();
    List<NhanVien> listNhanVien = new ArrayList<>();
    @Autowired
    private HoaDonService hoaDonService;

    @Autowired
    private KhachHangService khachHangService;

    @Autowired
    private NhanVienService nhanVienService;

    @GetMapping("hien-thi")
    public String viewHoaDon(Model model) {
        listHoaDon = hoaDonService.getAllHD();
        model.addAttribute("listHoaDon", listHoaDon);
        return "HoaDon/hoa-don";
    }

    @GetMapping("view-add")
    public String viewAddHoaDon(Model model) {
        listKhachHang = khachHangService.getAllKH();
        listNhanVien = nhanVienService.getAllNV();
        model.addAttribute("addHoaDon", new HoaDon());
        model.addAttribute("listNV", listNhanVien);
        model.addAttribute("listKH", listKhachHang);
        return "HoaDon/view-add";
    }

    @PostMapping("add")
    public String taoHoaDon(@ModelAttribute("addHoaDon") HoaDon newHoaDon) {
        hoaDonService.addHoaDon(newHoaDon);
        return "redirect:/hoa-don/hien-thi";
    }

    @GetMapping("delete/{idHoaDon}")
    public String huyHoaDon(@PathVariable("idHoaDon") UUID idHoaDon) {
        hoaDonService.huyHoaDon(idHoaDon);
        return "redirect:/hoa-don/hien-thi";
    }

    @PostMapping("search")
    public String searchHoaDon(Model model,
                           @RequestParam("maHoaDon") String maHoaDon) {
        if (maHoaDon.isEmpty()) {
            model.addAttribute("listHoaDon", listHoaDon);
        } else {
            List<HoaDon> searchHoaDon = hoaDonService.searchHoaDon(maHoaDon);
            model.addAttribute("listHoaDon", searchHoaDon);
        }
        return "HoaDon/hoa-don";
    }
}
