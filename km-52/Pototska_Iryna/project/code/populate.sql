INSERT INTO "USER" (user_email, user_password, user_height, user_weight, user_gender, user_age)
    VALUES('1111@gmail.com', 'aaaa1111', '179', '77', ' 0', '20');
INSERT INTO "USER" (user_email, user_password, user_height, user_weight, user_gender, user_age)
    VALUES('2222@gmail.com', 'aaaa2222', '170', '57', '1 ', '18');
INSERT INTO "USER" (user_email, user_password, user_height, user_weight, user_gender, user_age)
    VALUES('3333@gmail.com', 'aaaa3333', '158', '47', '1 ', '28');
INSERT INTO "USER" (user_email, user_password, user_height, user_weight, user_gender, user_age)
    VALUES('4444@gmail.com', 'aaaa4444', '171', '73', '0 ', '30');
	
INSERT INTO "RULE" (rule_id, rule_name, rule_description)
    VALUES('001', 'Colours', 'You must wear black');
INSERT INTO "RULE" (rule_id, rule_name, rule_description)
    VALUES('002', 'Pants', 'You must wear jeans');
INSERT INTO "RULE" (rule_id, rule_name, rule_description)
    VALUES('003', 'Shirts', 'You must wear shirts with long sleeve');
INSERT INTO "RULE" (rule_id, rule_name, rule_description)
    VALUES('004', 'Hats', 'You have not wear hats');
	
INSERT INTO "USER_RULE" (time_add_rule, user_email_fk, rule_id_fk)
    VALUES('02.11.2018', '1111@gmail.com', '001');
INSERT INTO "USER_RULE" (time_add_rule, user_email_fk, rule_id_fk)
    VALUES('03.11.2018', '2222@gmail.com', '002');
INSERT INTO "USER_RULE" (time_add_rule, user_email_fk, rule_id_fk)
    VALUES('04.11.2018', '3333@gmail.com', '003');
INSERT INTO "USER_RULE" (time_add_rule, user_email_fk, rule_id_fk)
    VALUES('05.11.2018', '4444@gmail.com', '004');
	
INSERT INTO "CLOTHES" (clothes_id, rule_id_fk, clothes_size)
    VALUES('100', '001', '44');
INSERT INTO "CLOTHES" (clothes_id, rule_id_fk, clothes_size)
    VALUES('101', '002', '40');
INSERT INTO "CLOTHES" (clothes_id, rule_id_fk, clothes_size)
    VALUES('102', '003', '42');
INSERT INTO "CLOTHES" (clothes_id, rule_id_fk, clothes_size)
    VALUES('103', '004', '46');