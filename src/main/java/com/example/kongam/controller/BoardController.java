package com.example.kongam.controller;

import com.example.kongam.service.BoardService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.Map;

@Controller
@RequiredArgsConstructor
public class BoardController {
    private final BoardService boardService;

//    @GetMapping()
//    public String boardList(){
//        return "boardList";
//    }

    @GetMapping("/board")
    public String kongamBoardList(){
        return "sub04";
    }

    @GetMapping("/{boardIdx}")
    public String kongamBoardDetails(@PathVariable Long boardIdx){
        return "kongamDetails";
    }

    @GetMapping("/admin/form")
    public String form(Model model){
        model.addAttribute("categories", boardService.getCategoryList());
        return "kongamForm";
    }

    @GetMapping("/form")
    public String boardForm(Model model){
        model.addAttribute("category", boardService.getCategoryList());
        return "boardForm";
    }
//    @GetMapping("/{boardIdx}")
//    public String boardDetails(@PathVariable Long boardIdx, Model model){

//        return "boardDetails";

//    }
}
