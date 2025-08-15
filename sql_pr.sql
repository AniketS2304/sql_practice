SELECT
  first_name,
  last_name,
  allergies
from patients
where
  allergies = 'Penicillin'
  or allergies = 'Morphine'
order by
  allergies,
  first_name,
  last_name