package com.question.service;

import com.question.domain.GroupVO;
import com.question.mapper.GroupMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class GroupServiceImpl implements GroupService {

    @Setter(onMethod_ = @Autowired)
    private GroupMapper mapper;


    @Override
    public List<GroupVO> getLank() {

         return mapper.getLank();
    }

    @Override
    public List<GroupVO> getLank2() {

        return mapper.getLank2();
    }
}



