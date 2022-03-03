--  Select with header in the case is - tn as 'Called', title as 'Title', customer_id as 'Requestor', create_time as 'Creation date'
select tn as 'Chamado',title as 'Titulo',customer_id as 'Solicitante',create_time as 'Data criação' 
from ticket 
where queue_id=319 and ticket_state_id in ('1','4') and user_id=1;
