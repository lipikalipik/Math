1)  select e.Fname,e.Lname,e.address,e.bdate
from employee e,department d
where d.dname='Research' and e.dno=d.dnumber;

2)select p.pnumber,d.dnumber,e.Lname,e.address,e.bdate
from project p,employee e,department d
where p.Plocation='Stafford' and p.dnum=d.dnumber and d.mgr_ssn=e.ssn;

3) select e.Fname,e.Lname,s.Fname,s.Lname from
Employee e,employee s
where e.ssn=s.Super_ssn;

4)(select p.pnumber
from project p,department d,employee e
where d.mgr_Ssn=e.Ssn and e.Lname='Smith' and p.dnum=d.dnumber)
union
(select w.pno
from works_on w,employee e
where w.essn=e.ssn and  e.Lname='Smith' );

5)select e.Fname,e.Lname from employee e
where address 
like
 '%Houston TX%';

6)select * from employee where dno=5 and salary>=30000 and salary<=40000;


2222)


1)
select e.Fname,e.Lname from employee e
where e.Super_ssn is null;

2)
select e.Fname,e.Lname from employee e

2)

SELECT E.Fname, E.Lname
FROM employee E
JOIN dependent D ON E.SSN = D.Essn
WHERE E.Fname = D.Dependent_name AND E.Sex = D.Sex;

3) select Fname,Lname from Employee
    where not exists(select * from Dependent where Ssn=Essn);


4)
 select Fname,Lname from Employee where
(select count(*) from dependent where Essn=Ssn);



5)
SELECT DISTINCT Essn
FROM works_on
WHERE Pno IN (1, 2, 3);

6)Select sum(salary),max(salary),min(salary),avg(salary)
from department ,employee
where Dname='Research' and Dnumber=dno;



7)
select dno,count(*),avg(salary) from EMPLOYEE group by dno;
