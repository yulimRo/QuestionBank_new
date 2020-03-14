package com.question.controller;

import com.question.domain.Criteria;
import com.question.domain.ReplyPageDTO;
import com.question.domain.ReplyVO;
import com.question.service.ReplyService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@Log4j
@RequestMapping("/replies/*")
@RestController
@AllArgsConstructor
public class ReplyController {

    private ReplyService service;

    @GetMapping(value = "/pages/{bno}/{page}", produces = {MediaType.APPLICATION_XML_VALUE, MediaType.APPLICATION_JSON_UTF8_VALUE})
    public ResponseEntity<ReplyPageDTO> getList(@PathVariable("page") int page, @PathVariable("bno") int bno){
        log.info("get list *****************************: " + bno);

        Criteria cri = new Criteria(page, 10);

        cri.setAllNum(cri.getPageNum() * cri.getAmount());
        cri.setPaging((cri.getPageNum()-1) * cri.getAmount());


        log.info("get Reply List bno "+ bno);

        log.info("cri"+ cri);

        return new ResponseEntity<>(service.getPageList(cri,bno), HttpStatus.OK);
    }




    // localhost:8090/board/register
    @PostMapping(value="/new", consumes = "application/json", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> create (@RequestBody ReplyVO vo){

        log.info ("ReplyVO : " + vo);

        int insertCount =service.register(vo);

        log.info("Reply INSERT COUNT: " + insertCount);


        return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK ): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    // localhost:8090/board/get?bno=5
    // localhost:8090/board/modify?bno=5
    @GetMapping(value = "/{rno}", produces = {MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE})
    public ResponseEntity<ReplyVO> get (@PathVariable("rno") int rno){
        log.info("get: " + rno);
        return  new ResponseEntity<>(service.get(rno), HttpStatus.OK);
    }

    @RequestMapping(method = {RequestMethod.PUT, RequestMethod.PATCH}, value = "/{rno}",consumes = "application/json" , produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> modify (@RequestBody ReplyVO vo, @PathVariable("rno") int rno){

        vo.setRno(rno);
        log.info ("rno : " + rno);
        log.info ("modify : " + vo);

        return service.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK ): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

    @DeleteMapping(value = "/{rno}", produces = {MediaType.TEXT_PLAIN_VALUE})
    public ResponseEntity<String> remove (@PathVariable("rno") int rno){
        log.info ("remove.... : " + rno);

        return service.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK ): new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
    }

}
