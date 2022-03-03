
-- Checks whether there is 1 or 4 in the ticket_state_id column
select count(*) as 'INFRA BR' from ticket where queue_id=321 and ticket_state_id in ('1','4') and user_id=1;
