package com.question.service;

import com.question.domain.MemberVO;
import com.question.mapper.MemberMapper;
import com.question.persistence.MemberDAO;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Service;

import javax.inject.Inject;
import java.util.ArrayList;
import java.util.List;

@Log4j
@Service
@AllArgsConstructor
@Configuration
//@ComponentScan({"com.board.persistence"})
public class LoginServiceImpl implements LoginService {


    private MemberMapper mapper;

    @Inject
    private MemberDAO dao;

    @Override
    public MemberVO chkUser(String ID) {
        log.info("checkUser...................");
        return mapper.chkUser(ID);
    }

    @Override
    public int signUp(MemberVO member) {
        log.info("signUp...................");
        return mapper.signUp(member);
    }

    @Override
    public boolean dupliChkId(String ID) {
        log.info("dupliChkId...................");
        List<String> arr = mapper.dupliChkId();
        for(int i = 0; i<arr.size(); i++){
            if(arr.get(i).equals(ID)){
                return true;
            }
        }
        return false;
    }

    @Override
    public ArrayList<String> findId(MemberVO vo){
        // TODO Auto-generated method stub
        log.info("아이디 찾기 service 진입");
        List<MemberVO> list = dao.findId(vo);
        ArrayList<String> findId = new ArrayList<String>();
        for(int i =0; i <list.size(); i ++) {
            String id = list.get(i).getID();
            findId.add(id);
        }
        return findId;
    }

    @Override
    public ArrayList<String> findPw(MemberVO member) {
        // TODO Auto-generated method stub
        log.info("비밀번호 찾기 service 진입");
        List<MemberVO> list = dao.findPw(member);
        ArrayList<String> findPw = new ArrayList<String>();
        for(int i =0; i <list.size(); i ++) {
            String id = list.get(i).getPWD();
            findPw.add(id);
        }
        return findPw;
    }

}
