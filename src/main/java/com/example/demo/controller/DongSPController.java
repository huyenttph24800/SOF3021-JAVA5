package com.example.demo.controller;

import com.example.demo.model.DongSP;
import com.example.demo.service.DongSPService;
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
@RequestMapping ( "/dong-sp/")
public class DongSPController {
    @Autowired
    private DongSPService dongSPService;

    ArrayList<DongSP> listDongSP = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listDongSP = dongSPService.getAllDongSP();
        model.addAttribute("listdsp", listDongSP);

        return "DongSP/dong-sp";
    }


    @GetMapping("view-add")
    public String viewAddDongSP(Model model) {
        model.addAttribute("addDongSP", new DongSP());
        return "DongSP/view-add";
    }

    @PostMapping("add")
    public String addDongSP(@Valid @ModelAttribute("addDongSP") DongSP newDongSP,
                            BindingResult result) {
        if (result.hasErrors()) {
            return "DongSP/view-add";
        } else {
            dongSPService.addDongSP(newDongSP);
        }
        return "redirect:/dong-sp/hien-thi";
    }

    @GetMapping("delete/{idDongSP}")
    public String deleteDongSP(@PathVariable("idDongSP") UUID idDongSP) {
        dongSPService.deleteDongSP(idDongSP);
        return "redirect:/dong-sp/hien-thi";
    }

    @GetMapping("detail/{idDongSP}")
    public String detailDongSP(Model model,
                               @PathVariable("idDongSP") UUID idDongSP) {
        DongSP detailDongSP = dongSPService.detailDongSP(idDongSP);
        model.addAttribute("detailDongSP", detailDongSP);
        return "DongSP/view-update";
    }

    @PostMapping("update")
    public String updateDongSP(@Valid @ModelAttribute("detailDongSP") DongSP updateDongSP,
                               BindingResult result) {
        if (result.hasErrors()) {
            return "DongSP/view-update";
        }
        dongSPService.updateDongSP(updateDongSP);
        return "redirect:/dong-sp/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenDongSP") String tenDongSP) {
        if (tenDongSP.isEmpty()) {
            model.addAttribute("listdsp", listDongSP);
        } else {
            List<DongSP> searchDongSP = dongSPService.searchTenDongSP(tenDongSP);
            model.addAttribute("listdsp", searchDongSP);
        }
        return "DongSP/dong-sp";
    }

}
