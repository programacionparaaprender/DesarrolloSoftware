--https://stackoverrun.com/es/q/4326343

use TEST
CREATE TABLE yt 
(
    [Store] int, 
    [Week] int, 
    [xCount] int 
); 

INSERT INTO yt 
(
    [Store], 
    [Week], [xCount] 
) 
VALUES 
    (102, 1, 96), 
    (101, 1, 138), 
    (105, 1, 37), 
    (109, 1, 59), 
    (101, 2, 282), 
    (102, 2, 212), 
    (105, 2, 78), 
    (109, 2, 97), 
    (105, 3, 60), 
    (102, 3, 123), 
    (101, 3, 220), 
    (109, 3, 87);



	select * 
from 
(
    select store, week, xCount 
    from yt 
) src 
pivot 
(
    sum(xcount) 
    for week in ([1], [2], [3]) 
) piv; 