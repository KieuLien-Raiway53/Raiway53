DROP DATABASE IF EXISTS Testing_System_Assignment_1;
CREATE DATABASE Testing_System_Assignment_1;
USE Testing_System_Assignment_1;
CREATE TABLE Department(
	department_id			INT,
	department_name			VARCHAR(50)
);
CREATE TABLE `Position`(
	position_id				INT,
	position_name			ENUM('DEV','Test','Serum Master','PM')
);
CREATE TABLE `Account`(
account_id		INT,
email			VARCHAR(50),
username		VARCHAR(50),
fullname		VARCHAR(50),
department_id	INT,
position_id		INT,
create_date		DATE
);

CREATE TABLE Group_use(
group_id		INT,
group_name		VARCHAR(50),
creator_id		INT,
creator_date	DATE
);
CREATE TABLE GroupAccount(
group_id		INT,
account_id		INT,
join_date		DATE
);
CREATE TABLE TypeQuestion(
type_id			INT,
type_name		ENUM('Essay','Multiple-Choice')
);
CREATE TABLE CategoryQuestion(
category_id		INT,
category_name	VARCHAR(50)
);
CREATE TABLE Question(
question_id		INT,
content			VARCHAR(50),
category_id		INT,
type_id			INT,
creator_id		INT,
create_date		DATE
);
CREATE TABLE Answer(
answer_id		INT,
content			VARCHAR(50),
question_id		INT,
iscorrect		BOOL
);
CREATE TABLE Exam(
exam_id			INT,
code			VARCHAR(50),
title			VARCHAR(50),
category_id		INT,
duration		INT,
creator_id		INT,
create_date		DATE
);
CREATE TABLE Examquestion(
exam_id			INT,
question_id		INT
);