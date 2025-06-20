use KP;

SELECT * from empinfo;

SELECT concat(first_name,' ',last_name) FROM empinfo
ORDER BY concat(first_name,' ',last_name);

-- SYNTAX: SUBSTR(STRING, STARTPOSITION, LENGTH)
SELECT SUBSTR(first_name,3,5) FROM empinfo;

SELECT UPPER(first_name), LOWER(last_name) FROM empinfo;

-- trim Removes the Whitespace before,after or inbetween
SELECT trim(first_name) FROM empinfo;

SELECT character_length(first_name) FROM empinfo;

-- THE MID and SUBSTR FUNCTION are same
-- SYNTAX: MID(STR, STARTPOS, LEN)
SELECT MID(first_name,2,3) FROM empinfo;
