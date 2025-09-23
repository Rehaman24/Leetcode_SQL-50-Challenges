-- Swap Adjacent Seats: For odd ids, swap with the next id; even ids swap with the previous id.

-- Handle Last Seat: If the last seat is odd, leave it unchanged.

-- Write your MySQL query statement below
SELECT
    CASE
        WHEN id = (SELECT MAX(id) FROM Seat) AND MOD(id, 2) = 1 THEN id
        WHEN MOD(id, 2) = 1 THEN id + 1
        ELSE id - 1
    END AS id,
    student
FROM Seat
ORDER BY id;
