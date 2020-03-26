package com.question.mapper;



import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;
import com.question.domain.MemberVO;

import java.util.List;

public interface GroupMapper {

    public List<GroupVO> getGroup();

    public List<GroupVO> getGroupRV();

    public List<GroupCateVO> getCate();

    public List<GroupCateVO> readGroupCate(int group_code);

    public String getAdminUser(int userCode);

    public List<GroupVO> getMyGroup(int userCode);
}



