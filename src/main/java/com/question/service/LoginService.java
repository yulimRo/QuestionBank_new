package com.question.service;

import com.question.domain.MemberVO;

import java.util.ArrayList;

public interface LoginService {

    public MemberVO chkUser(String ID);

    public int signUp(MemberVO member);

    public boolean dupliChkId(String ID);

    public ArrayList<String> findId(MemberVO member);

    public ArrayList<String> findPw(MemberVO member);

}
