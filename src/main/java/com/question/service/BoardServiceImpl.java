package com.question.service;

import com.question.domain.BoardVO;
import com.question.domain.Criteria;
import com.question.mapper.BoardMapper;
import lombok.AllArgsConstructor;
import lombok.Setter;
import lombok.extern.log4j.Log4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

    @Setter(onMethod_ = @Autowired)
    private BoardMapper mapper;

    @Override
    public List<BoardVO> getList(Criteria cri) {
        cri.setAllNum(cri.getPageNum() * cri.getAmount());
        cri.setPaging((cri.getPageNum()-1)*cri.getAmount());
        log.info("get List with criteria:" + cri);

        return mapper.getListWithPaging(cri);
    }

    @Override
    public void register(BoardVO board) {
        log.info("..............register");
        mapper.insert(board);
    }

    @Override
    public BoardVO get(int bno) {
        log.info("..............get");
        return mapper.read(bno);
    }

    @Override
    public boolean modify(BoardVO board) {
        log.info("....................modify");
        return mapper.update(board) == 1;
    }

    @Override
    public boolean remove(int bno) {
        log.info("....................modify");
        return mapper.delete(bno) == 1;
    }

    @Override
    public int getTotal(Criteria cri) {
        log.info("get totoal count");
        return mapper.getTotalCount(cri);
    }



//    @Override
//    public List<BoardVO> getList() {
//        log.info("..............getList");
//        return mapper.getList();
//    }



}



