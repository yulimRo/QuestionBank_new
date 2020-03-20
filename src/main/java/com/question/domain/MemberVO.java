package com.question.domain;

import lombok.Data;

import java.util.Date;

@Data
public class MemberVO {
    private String ID;
    private String PWD;
    private String NAME;
    private String MAIL;
    private String PHONE;
    private Date REG_TIME;
    private Date UPDATE_TIME;

}

