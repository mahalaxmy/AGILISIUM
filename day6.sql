# Write your MySQL query statement below
select s.student_id,s.student_name,sub.subject_name,count(e.subject_name) as attended_exams
from students as s  join subjects as sub left join examinations as e on e.student_id=s.student_id
and e.subject_name=sub.subject_name group by s.student_id,s.student_name,sub.subject_name order by s.student_id,sub.subject_name;
