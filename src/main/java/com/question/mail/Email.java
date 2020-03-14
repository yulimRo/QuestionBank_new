package com.question.mail;

import lombok.Data;

@Data
public class Email {

    private String subject;
    private String content;
    private String receiver;

}
