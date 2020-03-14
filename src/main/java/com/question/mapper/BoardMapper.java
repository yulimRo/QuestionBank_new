package com.question.mapper;


import com.question.domain.BoardVO;
import com.question.domain.Criteria;

import java.util.List;

public interface BoardMapper {

    //@Select("select * from tb1_board where bno >0")
    public List<BoardVO> getList();

    public List<BoardVO> getListWithPaging(Criteria cri);

    public void insert(BoardVO board);

    public BoardVO read(int bno);

    public int delete(int bno);

    public int update(BoardVO board);

    public int getTotalCount(Criteria cri);
}



