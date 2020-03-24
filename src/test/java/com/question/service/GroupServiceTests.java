package com.question.service;

import com.question.domain.GroupVO;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static junit.framework.TestCase.assertNotNull;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:web/WEB-INF/applicationContext.xml")
@Log4j
public class GroupServiceTests {

    @Setter(onMethod_ = @Autowired)
    private GroupService service;

    @Test
    public void testExist() {

        log.info(service);
        assertNotNull(service);

    }
//    @Test
//    public void testRegister(){
//        BoardVO board = new BoardVO();
//        board.setWriter("service 추가 작가");
//        board.setContent("service 추가 내용");
//        board.setTitle("service 추가 제목");
//
//        service.register(board);
//
//    }
//
    @Test
    public void testGetList(){

        service.getCate().forEach(group -> log.info(group));

    }

    @Test
    public void testGetLank(){

        service.getGroup().forEach(group -> log.info(group));
        service.getGroup().forEach(group->log.info(group.getGroup_code()));

    }
//
    @Test
    public void testGet(){

        GroupVO group = new GroupVO();
        group.setGroup_code(1);
        log.info(service.readGroupCate(group));

    }
//
//    @Test
//    public void testUpdate(){
//        BoardVO board = service.get(5);
//        board.setContent("변경에또변경");
//        log.info("MODIFY:"+service.modify(board));
//    }
//    @Test
//    public void testDelete(){
//        log.info("DELETE : " + service.remove(20));
//    }


}
