# Write your MySQL query statement below
# 2025/06/18 - 1280. Students and Examinations
select s.student_id, s.student_name, j.subject_name, count(e.subject_name) attended_exams
-- select *
from Students s
join Subjects j 
left join Examinations e
on s.student_id = e.student_id and e.subject_name = j.subject_name
-- where e.subject_name = j.subject_name
-- left join Subjects j 
-- on e.subject_name = j.subject_name

group by s.student_id, j.subject_name
order by s.student_id, j.subject_name;
