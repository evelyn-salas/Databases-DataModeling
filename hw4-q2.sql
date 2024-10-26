-- 2) Find all origin cities that only serve flights shorter than 3 hours. You can assume that flights with NULL actual_time are not 3 hours or more. (10 points)
-- Name the output column city and sort them. List each city only once in the result.
-- [Query result cardinality: 197] EDIT: It should be 109

Select Distinct origin_city as city
    from Flights x 
    where x.origin_city NOT IN 
    (
      Select origin_city 
      from Flights 
      where actual_time >= (3*60)
    );

/*
Laramie WY
North Bend/Coos Bay OR
Green Bay WI
Santa Maria CA
Muskegon MI
Lansing MI
Alpena MI
Visalia CA
La Crosse WI
Binghamton NY
Dickinson ND
Meridian MS
Jamestown ND
Carlsbad CA
Columbia MO
Mosinee WI
West Yellowstone MT
Marquette MI
Helena MT
Flagstaff AZ
 */