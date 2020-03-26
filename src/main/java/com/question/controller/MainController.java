package com.question.controller;

import com.question.domain.Criteria;
import com.question.domain.MemberVO;
import com.question.persistence.MemberDAO;
import com.question.service.GroupService;
import com.question.service.LoginService;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@Log4j
@RequestMapping("/main/*")
@AllArgsConstructor
public class MainController {

    @Setter(onMethod_ = @Autowired)
    private GroupService service;
    private LoginService memberService;

    @GetMapping("/mainPage")
    public void FirstPage(Model model,@RequestParam("id") String id) {

        log.info("mainPage");

        int size = service.getGroup().size();
        String[] codes = new String[service.getGroup().size()];
        String[] username = new String[service.getGroup().size()];
        String[] codes2 = new String[service.getGroupRV().size()];
        String[] username2 = new String[service.getGroupRV().size()];

        MemberVO loginUser = memberService.chkUser(id);


        for(int i =0; i <service.getGroup().size(); i++){
            codes[i] = service.readGroupCate(service.getGroup().get(i));

        }
        for(int i =0; i <service.getGroup().size(); i++){
            username[i] = service.getAdminName(service.getGroup().get(i).getAdmin_user_code());
        }

        for(int i =0; i <service.getGroup().size(); i++){
            codes2[i] = service.readGroupCate(service.getGroupRV().get(i));

        }
        for(int i =0; i <service.getGroupRV().size(); i++){
            username2[i] = service.getAdminName(service.getGroupRV().get(i).getAdmin_user_code());
        }

        model.addAttribute("loginUser",loginUser);
        /*새로운 퀴즈 그룹 리스트의 대표 태그와 관리자 이름*/
        model.addAttribute("list", service.getGroup());
        model.addAttribute("username",username);
        model.addAttribute("codes", codes);
        model.addAttribute("size", size);
        /*진행중인 퀴즈 그룹 리스트의 대표 태그와 관리자 이름*/
        model.addAttribute("list2", service.getGroupRV());
        model.addAttribute("codes2", codes2);
        model.addAttribute("username2",username2);


    }

    @GetMapping("/mainPage2")
    public void SecondPage(Model model){
        String[] codes = new String[service.getGroup().size()];
        String[] username = new String[service.getGroup().size()];

        for(int i =0; i <service.getGroup().size(); i++){
            codes[i] = service.readGroupCate(service.getGroup().get(i));

        }
        for(int i =0; i <service.getGroup().size(); i++){
            username[i] = service.getAdminName(service.getGroup().get(i).getAdmin_user_code());
        }

        /*새로운 퀴즈 그룹 리스트의 대표 태그와 관리자 이름*/
        model.addAttribute("list", service.getGroup());
        model.addAttribute("username",username);
        model.addAttribute("codes", codes);

    }
    @GetMapping("/make-group")
    public void RegisterGroup(){

    }


    @GetMapping("/myPage")
    public void myPage(Criteria cri, Model model,@RequestParam("ID") String id){
        log.info("list : "+ cri);


        int adminCode = memberService.chkUser(id).getUSER_CODE();
        model.addAttribute("myGroup", service.getMyGroup(adminCode));
        model.addAttribute("joinGroup", service.getGroupRV());
        model.addAttribute("loginUser", memberService.chkUser(id));


    }
    @GetMapping("/mypageInformation")
    public void mypageInformation(){

    }

    @GetMapping("/testRegistration")
    public void testRegistration(){

    }

    @GetMapping("/questionRegistration")
    public void questionRegistration(){

    }
}
