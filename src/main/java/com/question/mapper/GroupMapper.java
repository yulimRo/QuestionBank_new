package com.question.mapper;



import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;

import java.util.List;

public interface GroupMapper {

    public List<GroupVO> getGroup();

    public List<GroupVO> getGroupRV();

    public List<GroupCateVO> getCate();

    public List<GroupCateVO> readGroupCate(int group_code);

    public String getAdminUser(int userCode);

    public List<GroupVO> getMyGroup(int userCode);

    public GroupVO getOneGroup(int group_code);

    public List<GroupVO> getJoinedGroup(int user_code);
}