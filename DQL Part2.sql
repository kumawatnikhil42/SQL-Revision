use sakila;

select * from actor where first_name="NICK"
and actor_id=44;

-- 
select actor_id,first_name from actor
where first_name in ("ED","NICK") and actor_id>=3;

-- functions
-- single row function
-- string function

select first_name,lower(first_name) from actor;

-- dual table (dummy table) 
select 51+1,4+1 from dual;

select upper('ac') from dual;

select first_name,last_name,concat(first_name,last_name)
 from actor;
 
 select first_name,last_name,concat(first_name," ",last_name)
 from actor;
 
 select first_name,last_name,concat(first_name,"-",last_name)
 from actor;
 
 select first_name,last_name,concat_ws(" ",first_name,last_name)
 from actor;
 
 select first_name,last_name
 from actor
 where concat(first_name," ",last_name)="ED CHASE";
 
 select first_name,last_name
 from actor
 where first_name like concat("JENN","%") ; 
 
 -- substr to find substring (col.,position,no. of character)
 select first_name , substr(first_name,3) from actor;
 
 select first_name , substr(first_name,2,3) from actor;
 
 select first_name , substr(first_name,-3) from actor;
 
 -- instr to find position first occurence (col.,character to find)
  select first_name , instr(first_name,"E") from actor;
 
 -- locate to find character position at specific position
   select first_name , locate("E",first_name,3) from actor;
   
-- length to find lebgth of character (as per size of char. in bytes) 
   select length("abdjs") from dual;
    
-- char_length to find length of character
 select char_length("abc") from dual;
 
-- trim to remove by default widespaces
  select '    abc   ',trim('    abc    ') from dual;
  
-- leading to remove starting widespaces
 select '    abc   ',ltrim('    abc    ') from dual;
 -- or
select '    abc   ',trim(leading " " from '    abc    ') from dual;
 
-- trailing
select '    abc   ',trim(trailing " " from '    abc    ') from dual;
-- or rtrim

-- lpad or rpad for join
select rpad(9876623452,10,'#') from dual;
select rpad(987662345,10,'#') from dual;
select rpad(9876623452,15,'#') from dual;


