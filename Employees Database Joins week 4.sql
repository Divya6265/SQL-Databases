
Select p.Pnumber,p.Dnum,e.Lname,e.Address,e.Bdate from Project p INNER Join employee e on p.Dnum=e.Dno where p.Plocation="Stafford";


-- Left Outer Join:
-- 1. Retrieve the names of employees and supervisors using left outer join.

select e.Fname , e.Lname , s.Fname as superssn_Fname, s.lname as superssn_Lname from employee e left outer join employee s on e.ssn = s.Super_ssn;



-- Right outer Join:
-- 1. Retrieve the names of employees and supervisor using right outer join.

select e.Fname , e.Lname , s.Fname as superssn_Fname, s.lname as superssn_Lname from employee e right outer join employee s on e.ssn = s.Super_ssn;

-- Full outer Join:
-- 1. Retrieve the names of employees and supervisor using  full join.

select e.Fname , e.Lname , s.Fname as superssn_Fname, s.lname as superssn_Lname from employee e full outer join employee s on e.ssn = s.Super_ssn;




-- IF…ELSE with the variable in Boolean Expression.
call new_procedure();


-- IF statement with No Else

call new_procedure1();

