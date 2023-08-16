package com.example.demo.controller;


import com.example.demo.model.MauSac;
import com.example.demo.service.MauSacService;
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
@RequestMapping ( "/mau-sac/")
public class MauSacController {
    @Autowired
    private MauSacService mauSacService;

    ArrayList<MauSac> listMauSac = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listMauSac = mauSacService.getAllMS();
        model.addAttribute("listMS", listMauSac);

        return "MauSac/mau-sac";
    }

    @GetMapping("view-add")
    public String viewAddMauSac(Model model) {
        model.addAttribute("addMS", new MauSac());
        return "MauSac/view-add";
    }

    @PostMapping("add")
    public String addMauSac(@Valid @ModelAttribute("addMS") MauSac newMauSac,
                            BindingResult result) {
        if (result.hasErrors()) {
            return "MauSac/view-add";
        } else {
            mauSacService.addMS(newMauSac);
        }
        return "redirect:/mau-sac/hien-thi";
    }

    @GetMapping("delete/{idMS}")
    public String deleteMS(@PathVariable("idMS") UUID idMS) {
        mauSacService.deleteMS(idMS);
        return "redirect:/mau-sac/hien-thi";
    }

    @GetMapping("detail/{idMS}")
    public String detailMS(Model model,
                           @PathVariable("idMS") UUID idMS) {
        MauSac detailMS = mauSacService.detailMS(idMS);
        model.addAttribute("detailMS", detailMS);
        return "MauSac/view-update";
    }

    @PostMapping("update")
    public String updateMS(@Valid @ModelAttribute("detailMS") MauSac updateMS,
                           BindingResult result) {
        if (result.hasErrors()) {
            return "MauSac/view-update";
        }
        mauSacService.updateMS(updateMS);
        return "redirect:/mau-sac/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenMS") String tenMS) {
        if (tenMS.isEmpty()) {
            model.addAttribute("listMS", listMauSac);
        } else {
            List<MauSac> searchMS = mauSacService.searchTenMS(tenMS);
            model.addAttribute("listMS", searchMS);
        }
        return "MauSac/mau-sac";
    }
    


}
