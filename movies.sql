-- Find the Best-Picture winner with the best/smallest earnings rank. The
-- result should have the form (name, earnings_rank). Assume no two movies
-- have the same earnings rank.
SELECT p.name, min(m.earnings_rank) FROM oscar as o , movie as m, person as p where p.id = o.Person_id and o.type = "Best-Picture" and m.id=o.Movie_id