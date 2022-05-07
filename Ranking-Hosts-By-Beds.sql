WITH temp_cte AS
(select host_id, sum(n_beds) as nbeds
from airbnb_apartments
group by host_id)

select host_id, nbeds, dense_rank() over(order by nbeds desc) as rank
from temp_cte
