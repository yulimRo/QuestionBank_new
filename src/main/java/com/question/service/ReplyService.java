package com.question.service;

import com.question.domain.Criteria;
import com.question.domain.ReplyPageDTO;
import com.question.domain.ReplyVO;

import java.util.List;

public interface ReplyService {

    //public List<BoardVO> getList();

    public List<ReplyVO> getList(Criteria cri, int bno);

    public ReplyPageDTO getPageList(Criteria cri, int bno);

    public int register(ReplyVO vo);

    public ReplyVO get(int rno);

    public int modify(ReplyVO vo);

    public int remove(int rno);



}
