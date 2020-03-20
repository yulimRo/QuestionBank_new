package com.question.domain;

import lombok.Data;

import java.util.Date;

@Data
public class GroupVO {

    int group_code;
    String group_name;
    int admin_user_code;
    int number_of_participants;
    Date reg_time;
    Date update_time;


}
