package com.question.domain;

import lombok.Data;

import java.util.Date;

@Data
public class MemberVO {

    private String id;
    private String password;
    private String name;
    private String email;
    private String phone;
    private Date regdate;

}

