package com.question.domain;

import lombok.AllArgsConstructor;
import lombok.Getter;

import java.util.List;

@AllArgsConstructor
@Getter
public class ReplyPageDTO {

    private int replyCnt;
    private List<ReplyVO> list;

}
