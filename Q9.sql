select
category_name,
sum(item_price) as total_price
from
item i inner join item_category c
on i.category_id = c.category_id
GROUP BY category_name
order by total_price desc;