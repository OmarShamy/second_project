## second_project
## student_quiz_marks_dataset_from_Kaggle 
## Project Questions:
## 1.How many students are in the dataset?
## 2.What is the average score for each exam?
## 3.Who are the top 5 students based on their total score (out of 30)?
## 4.How many students scored less than 20 in total?

## lets_our_data
select *
from marks_final;
##a_copy_made 
create table marks_final_final
like marks_final;

insert marks_final_final
select *
from marks_final;

select *
from marks_final_final;

## lets check if there're duplicates 
select *,
row_number() over(partition by `ROLL NUMBER`) as row_num
from marks_final_final;

with duplicates_detector as 
(
select *,
row_number() over(partition by `ROLL NUMBER`) as row_num
from marks_final_final
)
select *
from duplicates_detector
where row_num > 1; 
## there's no duplicates its great

## 1.How many students are in the dataset? 
select *
from marks_final_final;

select count(distinct(`ROLL NUMBER`)) as total_students
from marks_final_final;
## SO_the_number_of_students_is_875

## 2.What is the average score for each exam?
select *
from marks_final_final;

##field_names_changed_to_be_easier_to_deal_with
alter table marks_final_final
change `Q12 (5)` quiz_12 text;

select *
from marks_final_final;

select 
round(avg(quiz_1),2) as avg_quiz_1,
round(avg(quiz_2),2) as avg_quiz_2,
round(avg(quiz_3),2) as avg_quiz_3,
round(avg(quiz_4),2) as avg_quiz_4,
round(avg(quiz_5),2) as avg_quiz_5,
round(avg(quiz_6),2) as avg_quiz_6,
round(avg(quiz_7),2) as avg_quiz_7,
round(avg(quiz_8),2) as avg_quiz_8,
round(avg(quiz_9),2) as avg_quiz_9,
round(avg(quiz_10),2) as avg_quiz_10,
round(avg(quiz_11),2) as avg_quiz_11,
round(avg(quiz_12),2) as avg_quiz_12
from marks_final_final;

## 3.Who are the top 5 students based on their total score (out of 30)?
select *
from marks_final_final;

select `ROLL NUMBER`
from marks_final_final
order by `Out of 30` desc
limit 5;

## 4.How many students scored less than 20 in total?
select *
from marks_final_final;


### student_below_20_in_total accroding to Top 9 (out of 45)
select count(*) as student_below_20_in_total
from marks_final_final
where `Top 9 (out of 45)` < 20;


### student_below_20_in_total accroding to Out of 30
select count(*) as student_below_20_in_total
from marks_final_final
where `Out of 30` < 20;





 












