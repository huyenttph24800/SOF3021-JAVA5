package com.example.demo.controller;

import com.example.demo.model.KhachHang;
import com.example.demo.model.NhanVien;
import com.example.demo.service.KhachHangService;
import com.example.demo.service.NhanVienService;
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
@RequestMapping ( "/khach-hang/")
public class KhachHangController {
    @Autowired
    private KhachHangService khachHangService;

    ArrayList<KhachHang> listKhachHang = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listKhachHang = khachHangService.getAllKH();
        model.addAttribute("listKH", listKhachHang);

        return "KhachHang/khach-hang";
    }

    @GetMapping("view-add")
    public String viewAddKhachHang(Model model) {
        model.addAttribute("addKhachHang", new KhachHang());
        return "KhachHang/view-add";
    }

    @PostMapping("add")
    public String addKhachHang(@Valid @ModelAttribute("addKhachHang") KhachHang newKhachHang,
                               BindingResult result) {
        if (result.hasErrors()) {
            return "KhachHang/view-add";
        } else {
            khachHangService.addKhachHang(newKhachHang);
        }
        return "redirect:/khach-hang/hien-thi";
    }

    @GetMapping("delete/{idKhachHang}")
    public String deleteKhachHang(@PathVariable("idKhachHang") UUID idKhachHang) {
        khachHangService.deleteKhachHang(idKhachHang);
        return "redirect:/khach-hang/hien-thi";
    }

    @GetMapping("detail/{idKhachHang}")
    public String detailKhachHang(Model model,
                                  @PathVariable("idKhachHang") UUID idKhachHang) {
        KhachHang detailKhachHang = khachHangService.detailKhachHang(idKhachHang);
        model.addAttribute("detailKhachHang", detailKhachHang);
        return "KhachHang/view-update";
    }

    @PostMapping("update")
    public String updateKhachHang(@Valid @ModelAttribute("detailKhachHang") KhachHang updateKhachHang,
                                  BindingResult result) {
        if (result.hasErrors()) {
            return "KhachHang/view-update";
        }
        khachHangService.updateKhachHang(updateKhachHang);
        return "redirect:/khach-hang/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenKhachHang") String tenKhachHang) {
        if (tenKhachHang.isEmpty()) {
            model.addAttribute("listKH", listKhachHang);
        } else {
            List<KhachHang> searchKhachHang = khachHangService.searchTenKhachHang(tenKhachHang);
            model.addAttribute("listKH", searchKhachHang);
        }
        return "KhachHang/khach-hang";
    }
    


}
