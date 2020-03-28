package com.question.mapper;

import com.question.domain.GroupCateVO;
import com.question.domain.GroupVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:web/WEB-INF/applicationContext.xml")
@Log4j
public class GroupMapperTests {

    @Setter(onMethod_ = @Autowired)
    private GroupMapper mapper;

    @Test
    public void testGetRank(){
        mapper.getGroup().forEach(board->log.info(board));
    }

    @Test
    public void testGetRank2(){
        mapper.getGroupRV().forEach(board->log.info(board));
    }

    @Test
    public void testGetAdminUserName(){
        log.info(mapper.getAdminUser(2));
    }

    @Test
    public void testGetGroupCate(){
        GroupVO group = new GroupVO();
        group.setGroup_code(1);

        log.info(mapper.readGroupCate(group.getGroup_code()));
    }

}
