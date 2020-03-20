package com.question.service;


import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;

import java.util.List;

public interface GroupService {


    public List<GroupVO> getLank();

    public List<GroupVO> getLank2();

    public List<GroupCateVO> getCate();

    public String readGroupCate(GroupVO group);




}
