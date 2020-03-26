package com.question.service;


import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;
import com.question.domain.MemberVO;

import java.util.List;

public interface GroupService {


    public List<GroupVO> getLank();

    public List<GroupVO> getLank2();

    public List<GroupCateVO> getCate();

    public String readGroupCate(GroupVO group);

    public void mypageInformation2(MemberVO member);



}
