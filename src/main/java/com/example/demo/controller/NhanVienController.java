package com.example.demo.controller;

import com.example.demo.model.ChucVu;
import com.example.demo.model.CuaHang;
import com.example.demo.model.NhanVien;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.CuaHangService;
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
@RequestMapping ( "/nhan-vien")
public class NhanVienController {
    List<NhanVien> listNhanVien = new ArrayList<>();
    List<CuaHang> listCuaHang = new ArrayList<>();
    List<ChucVu> listChucVu = new ArrayList<>();
    @Autowired
    private NhanVienService nhanVienService;

    @Autowired
    private CuaHangService cuaHangService;

    @Autowired
    private ChucVuService chucVuService;

    @GetMapping("/hien-thi")
    public String getAll(Model model){

        listNhanVien = nhanVienService.getAllNV();
        model.addAttribute("listNV", listNhanVien);

        return "NhanVien/nhan-vien";
    }

    @GetMapping("/view-add")
    public String viewAddNhanVien(Model model) {
        listCuaHang = cuaHangService.getAllCH();
        listChucVu = chucVuService.getAllCV();
        model.addAttribute("addNhanVien", new NhanVien());
        model.addAttribute("listCH", listCuaHang);
        model.addAttribute("listCV", listChucVu);
        return "NhanVien/view-add";
    }

    @PostMapping("/add")
    public String addNhanVien(@Valid @ModelAttribute("addNhanVien") NhanVien newNhanVien,
                              BindingResult result) {
        if (result.hasErrors()) {
            return "NhanVien/view-add";
        } else {
            nhanVienService.addNhanVien(newNhanVien);
        }
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("/delete/{idNhanVien}")
    public String deleteNhanVien(@PathVariable("idNhanVien") UUID idNhanVien) {
        nhanVienService.deleteNhanVien(idNhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @GetMapping("detail/{idNhanVien}")
    public String detailNhanVien(Model model,
                                 @PathVariable("idNhanVien") UUID idNhanVien) {
        NhanVien detailNhanVien = nhanVienService.detailNhanVien(idNhanVien);
        listCuaHang = cuaHangService.getAllCH();
        listChucVu = chucVuService.getAllCV();
        model.addAttribute("detailNhanVien", detailNhanVien);
        model.addAttribute("listCH", listCuaHang);
        model.addAttribute("listCV", listChucVu);
        return "NhanVien/view-update";
    }

    @PostMapping("/update")
    public String updateNhanVien(@Valid @ModelAttribute("detailNhanVien") NhanVien updateNhanVien,
                                 BindingResult result) {
        if (result.hasErrors()) {
            return "NhanVien/view-update";
        }
        nhanVienService.updateNhanVien(updateNhanVien);
        return "redirect:/nhan-vien/hien-thi";
    }

    @PostMapping("/search")
    public String searchTen(Model model,
                            @RequestParam("tenNhanVien") String tenNhanVien) {
        if (tenNhanVien.isEmpty()) {
            model.addAttribute("listNV", listNhanVien);
        } else {
            List<NhanVien> searchNhanVien = nhanVienService.searchTenNhanVien(tenNhanVien);
            model.addAttribute("listNV", searchNhanVien);
        }
        return "NhanVien/nhan-vien";
    }


    


}
