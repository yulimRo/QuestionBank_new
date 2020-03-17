package com.question.domain;

import lombok.Data;

import java.util.Date;

@Data
public class GroupVO {

    int group_code;
    String group_name;
    int admin_user_code;
    int number_of_participants;
    int cate_code1;
    int cate_code2;
    int cate_code3;
    int cate_code4;
    int cate_code5;
    Date reg_time;
    Date update_time;


}
