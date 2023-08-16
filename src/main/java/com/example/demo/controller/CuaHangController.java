package com.example.demo.controller;

import com.example.demo.model.ChucVu;
import com.example.demo.model.CuaHang;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.CuaHangService;
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
@RequestMapping ( "/cua-hang/")
public class CuaHangController {
    @Autowired
    private CuaHangService cuaHangService;

    ArrayList<CuaHang> listCuaHang = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listCuaHang = cuaHangService.getAllCH();
        model.addAttribute("listCH", listCuaHang);

        return "CuaHang/cua-hang";
    }

    @GetMapping("view-add")
    public String viewAddCuaHang(Model model) {
        model.addAttribute("addCuaHang", new CuaHang());
        return "CuaHang/view-add";
    }

    @PostMapping("add")
    public String addCuaHang(@Valid @ModelAttribute("addCuaHang") CuaHang newCuaHang,
                             BindingResult result) {
        if (result.hasErrors()) {
            return "CuaHang/view-add";
        } else {
            cuaHangService.addCuaHang(newCuaHang);
        }
        return "redirect:/cua-hang/hien-thi";
    }

    @GetMapping("delete/{idCuaHang}")
    public String deleteCuaHang(@PathVariable("idCuaHang") UUID idCuaHang) {
        cuaHangService.deleteCuaHang(idCuaHang);
        return "redirect:/cua-hang/hien-thi";
    }

    @GetMapping("detail/{idCuaHang}")
    public String detailCuaHang(Model model,
                                @PathVariable("idCuaHang") UUID idCuaHang) {
        CuaHang detailCuaHang = cuaHangService.detailCuaHang(idCuaHang);
        model.addAttribute("detailCuaHang", detailCuaHang);
        return "CuaHang/view-update";
    }

    @PostMapping("update")
    public String updateCuaHang(@Valid @ModelAttribute("detailCuaHang") CuaHang updateCuaHang,
                                BindingResult result) {
        if (result.hasErrors()) {
            return "CuaHang/view-update";
        }
        cuaHangService.updateCuaHang(updateCuaHang);
        return "redirect:/cua-hang/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenCuaHang") String tenCuaHang) {
        if (tenCuaHang.isEmpty()) {
            model.addAttribute("listCH", listCuaHang);
        } else {
            List<CuaHang> searchCuaHang = cuaHangService.searchTenCuaHang(tenCuaHang);
            model.addAttribute("listCH", searchCuaHang);
        }
        return "CuaHang/cua-hang";
    }
    


}
