package com.question.service;


import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;

import java.util.List;

public interface GroupService {


    public List<GroupVO> getGroup();

    public List<GroupVO> getGroupRV();

    public List<GroupCateVO> getCate();

    public String readGroupCate(GroupVO group);

    public String getAdminName(int userCode);

    public List<GroupVO> getMyGroup(int userCode);




}
