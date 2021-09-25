with traffic as (
    select * from {{ ref('traffic')}}
),
I80_stations as (
  select * from {{ ref('I80_stations') }}
),
station_summary as (
  select * from {{ ref('station_summary') }}
),
final as (
    select 
        I80_stations.ID,
        I80_stations.Name,
        traffic.utc_time_id,
        traffic.avg_travel_time,
        station_summary.flow_max
        from I80_stations
        inner join station_summary 
        on station_summary.ID = I80_stations.id  
        inner join traffic 
        on station_summary.ID = traffic.source_id
        where traffic.utc_time_id = '03/01/2016 16:18'
)
select 
  * 
from final