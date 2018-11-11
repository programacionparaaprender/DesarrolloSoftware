--https://stackoverflow.com/questions/13372276/simple-way-to-transpose-columns-and-rows-in-sql

use TEST
CREATE TABLE yourTable([color] varchar(5), [Paul] int, [John] int, [Tim] int, [Eric] int);

INSERT INTO yourTable
    ([color], [Paul], [John], [Tim], [Eric])
VALUES
    ('Red', 1, 5, 1, 3),
    ('Green', 8, 4, 3, 5),
    ('Blue', 2, 2, 9, 1);

select name, [Red], [Green], [Blue]
from
(
  select color, name, value
  from yourtable
  unpivot
  (
    value for name in (Paul, John, Tim, Eric)
  ) unpiv
) src
pivot
(
  sum(value)
  for color in ([Red], [Green], [Blue])
) piv