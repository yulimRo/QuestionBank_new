package com.question.persistence;

import com.question.domain.MemberVO;

import java.util.List;

public interface MemberDAO {

    public List<MemberVO> findId(MemberVO vo);

    public List<MemberVO> findPw(MemberVO vo);
}
