-- OTRS  Returns the current date difference for the related create_time column difference in days.
select count(*) as 'Mais de 0 até 1 dia' from (
select create_time,CURDATE(), DATEDIFF(CURDATE(),create_time)
from ticket
where DATEDIFF(CURDATE(),create_time) <= 3 and ticket_state_id=1 and queue_id=319) as ANumDays;



-- Another example using between
select count(*) as 'Mais de 3 dias' from (
select create_time,CURDATE(), DATEDIFF(CURDATE(),create_time)
from ticket
where DATEDIFF(CURDATE(),create_time) between 4 and 5 and ticket_state_id=1 and queue_id=319) as ANumDays;
