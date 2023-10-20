--find all sales where car purchased was electric
select salesId, salesAmount, EngineType
from sales s join inventory i on i.inventoryId=s.inventoryId
join model m on i.modelId=m.modelId
where EngineType='Electric'