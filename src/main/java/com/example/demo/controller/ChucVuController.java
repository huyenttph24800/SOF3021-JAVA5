package com.example.demo.controller;

import com.example.demo.model.ChucVu;
import com.example.demo.service.ChucVuService;

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
@RequestMapping ( "/chuc-vu/")
public class ChucVuController {
    @Autowired
    private ChucVuService chucVuService;

    ArrayList<ChucVu> listChucVu = new ArrayList<>();

    @GetMapping("hien-thi")
    public String getAll(Model model){

        listChucVu = chucVuService.getAllCV();
        model.addAttribute("listCV", listChucVu);

        return "ChucVu/chuc-vu";
    }


    @GetMapping("view-add")
    public String viewAddChucVu(Model model) {
        model.addAttribute("addChucVu", new ChucVu());
        return "ChucVu/view-add";
    }

    @PostMapping("add")
    public String addChucVu(@Valid @ModelAttribute("addChucVu") ChucVu newChucVu,
                            BindingResult result) {
        if (result.hasErrors()) {
            return "ChucVu/view-add";
        } else {
            chucVuService.addChucVu(newChucVu);
        }
        return "redirect:chuc-vu/hien-thi";
    }

    @GetMapping("delete/{idChucVu}")
    public String deleteChucVu(@PathVariable("idChucVu") UUID idChucVu) {
        chucVuService.deleteChucVu(idChucVu);
        return "redirect:/chuc-vu/hien-thi";
    }

    @GetMapping("detail/{idChucVu}")
    public String detailChucVu(Model model,
                               @PathVariable("idChucVu") UUID idChucVu) {
        ChucVu detailChucVu = chucVuService.detailChucVu(idChucVu);
        model.addAttribute("detailChucVu", detailChucVu);
        return "ChucVu/view-update";
    }

    @PostMapping("update")
    public String updateChucVu(@Valid @ModelAttribute("detailChucVu") ChucVu updateChucVu,
                               BindingResult result) {
        if (result.hasErrors()) {
            return "ChucVu/view-update";
        }
        chucVuService.updateChucVu(updateChucVu);
        return "redirect:/chuc-vu/hien-thi";
    }

    @PostMapping("search")
    public String searchTen(Model model,
                            @RequestParam("tenChucVu") String tenChucVu) {
        if (tenChucVu.isEmpty()) {
            model.addAttribute("listCV", listChucVu);
        } else {
            List<ChucVu> searchChucVu = chucVuService.searchTenChucVu(tenChucVu);
            model.addAttribute("listCV", searchChucVu);
        }
        return "ChucVu/chuc-vu";
    }

}
