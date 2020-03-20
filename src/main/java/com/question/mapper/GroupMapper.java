package com.question.mapper;



import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;

import java.util.List;

public interface GroupMapper {

    public List<GroupVO> getLank();

    public List<GroupVO> getLank2();

    public List<GroupCateVO> getCate();

    public List<GroupCateVO> readGroupCate(int group_code);
}



