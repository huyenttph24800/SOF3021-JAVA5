package com.example.demo.controller;

import com.example.demo.model.ChucVu;
import com.example.demo.model.SanPham;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.SanPhamService;
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
@RequestMapping ( "/san-pham/")
public class SanPhamController {
    @Autowired
    private SanPhamService sanPhamService;

    ArrayList<SanPham> listSanPham = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listSanPham = sanPhamService.getAllSP();
        model.addAttribute("listSanPham", listSanPham);

        return "SanPham/san-pham";
    }
    @GetMapping("view-add")
    public String viewAddSanPham(Model model) {
        model.addAttribute("addSanPham", new SanPham());
        return "SanPham/view-add";
    }

    @PostMapping("add")
    public String addSanPham(@Valid @ModelAttribute("addSanPham") SanPham newSanPham,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "SanPham/view-add";
        } else {
            sanPhamService.addSanPham(newSanPham);
        }
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("delete/{idSanPham}")
    public String deleteSanPham(@PathVariable("idSanPham") UUID idSanPham) {
        sanPhamService.deleteSanPham(idSanPham);
        return "redirect:/san-pham/hien-thi";
    }

    @GetMapping("detail/{idSanPham}")
    public String detailSanPham(Model model,
                                @PathVariable("idSanPham") UUID idSanPham) {
        SanPham detailSanPham = sanPhamService.detailSanPham(idSanPham);
        model.addAttribute("detailSanPham", detailSanPham);
        return "SanPham/view-update";
    }

    @PostMapping("update")
    public String updateSanPham(@Valid @ModelAttribute("detailSanPham") SanPham updateSanPham,
                                BindingResult result) {
        if (result.hasErrors()) {
            return "SanPham/view-update";
        }
        sanPhamService.updateSanPham(updateSanPham);
        return "redirect:/san-pham/hien-thi";
    }

    @PostMapping("search")
    public String searchSP(Model model,
                           @RequestParam("tenSanPham") String tenSanPham) {
        if (tenSanPham.isEmpty()) {
            model.addAttribute("listSanPham", listSanPham);
        } else {
            List<SanPham> searchSanPham = sanPhamService.searchTenSanPham(tenSanPham);
            model.addAttribute("listSanPham", searchSanPham);
        }
        return "SanPham/san-pham";
    }


}
