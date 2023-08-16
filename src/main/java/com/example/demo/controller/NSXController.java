package com.example.demo.controller;

import com.example.demo.model.ChucVu;
import com.example.demo.model.NSX;
import com.example.demo.service.ChucVuService;
import com.example.demo.service.NSXService;
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
@RequestMapping ( "/nsx/")
public class NSXController {
    @Autowired
    private NSXService nsxService;

    ArrayList<NSX> listNSX = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listNSX = nsxService.getAllNSX();
        model.addAttribute("listnsx", listNSX);

        return "NSX/nsx";
    }

    @GetMapping("view-add")
    public String viewAddNSX(Model model) {
        model.addAttribute("addNSX", new NSX());
        return "NSX/view-add";
    }

    @PostMapping("add")
    public String addNSX(@Valid @ModelAttribute("addNSX") NSX newNSX,
                         BindingResult result) {
        if (result.hasErrors()) {
            return "NSX/view-add";
        } else {
            nsxService.addNSX(newNSX);
        }
        return "redirect:/nsx/hien-thi";
    }

    @GetMapping("delete/{idNSX}")
    public String deleteNSX(@PathVariable("idNSX") UUID idNSX) {
        nsxService.deleteNSX(idNSX);
        return "redirect:/nsx/hien-thi";
    }

    @GetMapping("detail/{idNSX}")
    public String detailNSX(Model model,
                            @PathVariable("idNSX") UUID idNSX) {
        NSX detailNSX = nsxService.detailNSX(idNSX);
        model.addAttribute("detailNSX", detailNSX);
        return "NSX/view-update";
    }

    @PostMapping("update")
    public String updateNSX(@Valid @ModelAttribute("detailNSX") NSX updateNSX,
                            BindingResult result) {
        if (result.hasErrors()) {
            return "NSX/view-update";
        }
        nsxService.updateNSX(updateNSX);
        return "redirect:/nsx/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenNSX") String tenNSX) {
        if (tenNSX.isEmpty()) {
            model.addAttribute("listnsx", listNSX);
        } else {
            List<NSX> searchNSX = nsxService.searchTenNSX(tenNSX);
            model.addAttribute("listnsx", searchNSX);
        }
        return "NSX/nsx";
    }
    


}
