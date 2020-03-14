package com.question.controller;

import com.question.domain.BoardVO;
import com.question.domain.Criteria;
import com.question.domain.PageDTO;
import com.question.service.BoardService;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {

    @Setter(onMethod_ = @Autowired)
    private BoardService service;

    // localhost:8090/board/list
    /*
    @GetMapping("/list")
    public void list (Model model){
        log.info("list");
       // model.addAttribute("list",service.getList());
    }
*/
    @GetMapping("/list")
    public void list(Criteria cri, Model model){
        log.info("list : "+ cri);
        model.addAttribute("list", service.getList(cri));

        int total = service.getTotal(cri);

       // model.addAttribute("pageMaker", new PageDTO(cri,20));
        model.addAttribute("pageMaker", new
                PageDTO(cri,total));
    }

    @GetMapping("/register")
    public void register (){

    }

    @GetMapping("/index2")
    public void index2 (){

    }
    @GetMapping("/index")
    public void index1 (){

    }

    // localhost:8090/board/register
    @PostMapping("/register")
    public String register (BoardVO board, RedirectAttributes rttr){
        log.info ("register : " + board);

        service.register(board);

        rttr.addFlashAttribute("result", board.getBno());

        return "redirect:/board/list";
    }

    // localhost:8090/board/get?bno=5
    // localhost:8090/board/modify?bno=5
    @GetMapping({"/get","/modify"})
    public void get (@RequestParam("bno") int bno, Model model, @ModelAttribute("cri") Criteria cri){
        log.info("/get or modify "+bno);
        model.addAttribute("board",service.get(bno));

    }

    @PostMapping("/modify")
    public String modify (BoardVO board, RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri){
        log.info ("modify : " + board);

        if(service.modify(board)){
            rttr.addFlashAttribute("result","success");
        };

        return "redirect:/board/list"+ cri.getListLink();
    }

    @PostMapping("/remove")
    public String remove (@RequestParam("bno") int bno , RedirectAttributes rttr, @ModelAttribute("cri") Criteria cri){
        log.info ("remove.... : " + bno);

        if(service.remove(bno)){
            rttr.addFlashAttribute("result","success");
        };

        return "redirect:/board/list" + cri.getListLink();
    }

}
