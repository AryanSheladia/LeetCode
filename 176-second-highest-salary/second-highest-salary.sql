select(
    select salary
    from (
        select salary,
        dense_rank() over (order by salary desc) as rnk
        from Employee
    ) s
    where rnk = 2
    limit 1
) as SecondHighestSalary;