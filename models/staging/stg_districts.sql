with source as (
  select * from {{ ref('districts') }}
),

stage_district as (
  select
    ID,
    Name
  from source
)
select
  *
from stage_district