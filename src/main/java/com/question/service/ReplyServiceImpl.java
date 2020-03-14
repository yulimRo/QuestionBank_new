package com.question.service;

import com.question.domain.Criteria;
import com.question.domain.ReplyPageDTO;
import com.question.domain.ReplyVO;
import com.question.mapper.ReplyMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

    @Setter(onMethod_ = @Autowired)
    private ReplyMapper mapper;


    @Override
    public List<ReplyVO> getList(Criteria cri, int bno) {
        log.info("get Reply List of a Board" + bno);

        return mapper.getListWithPaging(cri, bno);
    }

    @Override
    public ReplyPageDTO getPageList(Criteria cri, int bno) {
        return new ReplyPageDTO( mapper.getCountByBno(bno),mapper.getListWithPaging(cri,bno));
    }

    @Override
    public int register(ReplyVO vo) {

        log.info("register.... "+ vo);

        return mapper.insert(vo);

    }

    @Override
    public ReplyVO get(int rno) {
        log.info("get......."+ rno);

        return mapper.read(rno);
    }

    @Override
    public int modify(ReplyVO vo) {
        log.info("modify.............."+ vo);

        return mapper.update(vo);
    }

    @Override
    public int remove(int rno) {
        log.info("modify.............."+ rno);
        return mapper.delete(rno);
    }
}



