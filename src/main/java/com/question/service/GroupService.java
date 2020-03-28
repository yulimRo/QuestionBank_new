package com.question.service;


import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;
import com.question.domain.MemberVO;


import java.util.List;

public interface GroupService {


    public List<GroupVO> getGroup();

    public List<GroupVO> getGroupRV();

    public List<GroupCateVO> getCate();

    public List<GroupCateVO> getCate(int group_code);


    public String readGroupCate(GroupVO group);

    public String getAdminName(int userCode);

    public List<GroupVO> getMyGroup(int userCode);

    public void mypageInformation2(MemberVO member);

    public GroupVO getOneGroup(int group_code);



}