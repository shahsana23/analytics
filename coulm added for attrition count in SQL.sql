use project1;
select * from HR;
alter table HR add column Attrition_count int;
update HR
set Attrition_count = case
when Attrition = 'yes' then '1'
when Attrition = 'No' then '0'
end;
select attrition, attrition_count from hr;
