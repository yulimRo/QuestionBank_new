package com.question.mapper;

import com.question.domain.MemberVO;

import java.util.List;

public interface MemberMapper {

    public MemberVO chkUser(String ID);

    public int signUp(MemberVO member);

    public List<String> dupliChkId();

}
