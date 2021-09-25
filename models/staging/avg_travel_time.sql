with traffic as (
    select * from {{ ref('traffic')}}
),
I80_stations as (
  select * from {{ ref('I80_stations') }}
),
final as (
    select 
        I80_stations.ID,
        I80_stations.Name,
        traffic.utc_time_id,
        traffic.avg_travel_time
        from I80_stations
        inner join traffic on traffic.source_id = I80_stations.id 
        where traffic.avg_travel_time = 71 order by utc_time_id
)
select 
  * 
from final 