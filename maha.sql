select machine_id,ROUND(AVG(start -end),3) as processing_time from 
(select machine_id,process_id,MAX(timestamp) as start , MIN(timestamp) as end from Activity 
group by machine_id,process_id) as time group by machine_id;
