package com.example.demo.controller;

import com.example.demo.model.ChiTietSP;
import com.example.demo.model.HoaDonChiTiet;
import com.example.demo.service.ChiTietSPService;
import com.example.demo.service.HoaDonChiTietService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@Controller
@RequestMapping("/hoa-don-chi-tiet/")
public class HoaDonChiTietController {
    List<ChiTietSP> listChiTetSp = new ArrayList<>();
    List<HoaDonChiTiet> listHoaDonChiTiet = new ArrayList<>();
    @Autowired
    private HoaDonChiTietService hoaDonChiTietService;

    @Autowired
    private ChiTietSPService chiTietSPService;

    @GetMapping("hien-thi/{idHoaDonChiTiet}")
    public String viewHoaDonChiTietById(Model model,
                                        @PathVariable("idHoaDonChiTiet") UUID idHoaDonChiTiet){
        listHoaDonChiTiet = hoaDonChiTietService.getAllHoaDonById(idHoaDonChiTiet);
        model.addAttribute("listHoaDonChiTietById", listHoaDonChiTiet);
        return "HoaDon/chi-tiet-hoa-don";
    }
    @GetMapping("view-add-sp-gio-hang")
    public String viewAddSP(Model model){
        listChiTetSp = chiTietSPService.getAllCTSP();
        model.addAttribute("listSanPhamAddToCart", listChiTetSp);
        return "HoaDon/view-add-san-pham";
    }
}
