use quanlysinhvien;
select address, count (StudentId)as'só lượng học viên'
from student
group by address;

select s.studentid, s.studentname, avg (mark)
from student s join Mark m on s.studentid = m.studentid
group by s.studentid, s.studentname;

SELECT S.StudentId,S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) > 15;

SELECT S.StudentId, S.StudentName, AVG(Mark)
FROM Student S join Mark M on S.StudentId = M.StudentId
GROUP BY S.StudentId, S.StudentName
HAVING AVG(Mark) >= ALL (SELECT AVG(Mark) FROM Mark GROUP BY Mark.StudentId);
