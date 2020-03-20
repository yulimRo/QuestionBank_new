package com.question.controller;

import com.question.domain.Criteria;
import com.question.domain.GroupVO;
import com.question.service.GroupService;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@Log4j
@RequestMapping("/main/*")
@AllArgsConstructor
public class MainController {

    @Setter(onMethod_ = @Autowired)
    private GroupService service;

    @GetMapping("/mainPage")
    public void FirstPage(Model model) {

        log.info("mainPage");

        String[] codes = new String[100];

        for(int i =0; i <service.getLank().size(); i++){
            codes[i] = service.readGroupCate(service.getLank().get(i));

        }


        model.addAttribute("list", service.getLank());
        model.addAttribute("list2", service.getLank2());
        model.addAttribute("codes", codes);

    }

    @GetMapping("/mainPage2")
    public void SecondPage(){

    }
    @GetMapping("/make-group")
    public void RegisterGroup(){

    }
    @GetMapping("/myPage")
    public void MyPage(){

    }
    @GetMapping("/mypageUpdateVer")
    public void list(Criteria cri, Model model){
        log.info("list : "+ cri);
        model.addAttribute("rank", service.getLank());

    }
    @GetMapping("/mypageUpdateVer2")
    public void list2(Criteria cri, Model model){
        log.info("list : "+ cri);
        model.addAttribute("rank2", service.getLank2());

    }
    @GetMapping("/mypageInformation")
    public void mypageInformation(){

    }
}
