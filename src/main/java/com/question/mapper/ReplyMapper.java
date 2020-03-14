package com.question.mapper;

import com.question.domain.BoardVO;
import com.question.domain.Criteria;
import com.question.domain.ReplyVO;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ReplyMapper {
    //@Select("select * from tb1_board where bno >0")
    public List<BoardVO> getList();

    public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") int bno);

    public int insert(ReplyVO vo);

    public ReplyVO read(int rno);

    public int delete(int rno);

    public int update(ReplyVO reply);

    public int getCountByBno(int bno);
}
