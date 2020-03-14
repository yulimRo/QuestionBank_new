package com.question.service;

import com.question.domain.BoardVO;
import com.question.domain.Criteria;

import java.util.List;

public interface BoardService {

    //public List<BoardVO> getList();

    public List<BoardVO> getList(Criteria cri);

    public void register(BoardVO board);

    public BoardVO get(int bno);

    public boolean modify(BoardVO board);

    public boolean remove(int bno);

    public int getTotal(Criteria cri);


}
