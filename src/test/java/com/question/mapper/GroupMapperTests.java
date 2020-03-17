package com.question.mapper;

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
        mapper.getLank().forEach(board->log.info(board));
    }

    @Test
    public void testGetRank2(){
        mapper.getLank2().forEach(board->log.info(board));
    }

}
