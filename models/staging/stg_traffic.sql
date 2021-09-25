with source as (
    select * from {{ ref('traffic')}}
),

stage_traffic as (
    select 
     utc_time_id,
     source_id,
     primary_link_source_flag,
     avg_speed,
     avg_flow,
     avg_occ,	
     avg_freeflow_speed,	
     avg_travel_time,	
     high_quality_samples,	
     samples_below_100pct_ff,	
     samples_below_95pct_ff,	
     samples_below_90pct_ff,	
     samples_below_85pct_ff,	
     samples_below_80pct_ff,	
     samples_below_75pct_ff,	
     samples_below_70pct_ff,	
     samples_below_65pct_ff,	
     samples_below_60pct_ff,	
     samples_below_55pct_ff,	
     samples_below_50pct_ff,	
     samples_below_45pct_ff,	
     samples_below_40pct_ff,	
     samples_below_35pct_ff,	
     samples_below_30pct_ff,	
     samples_below_25pct_ff,	
     samples_below_20pct_ff
    from source
)
select 
   * 
from stage_traffic