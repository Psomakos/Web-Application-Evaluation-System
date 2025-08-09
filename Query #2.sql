/*SELECT count(*) FROM transactions;*/
SELECT distinct SUserSessionID FROM transactions;
SELECT count(distinct SUserSessionID) FROM transactions;
SELECT count(distinct SUserSessionID) FROM transactions WHERE SUserSessionID != '-';
SELECT * FROM transactions where SUserSessionID LIKE "E1A0%";
SELECT count(*) FROM transactions where SUserSessionID LIKE "E1A0%";
SELECT sum(BBytesSent) FROM transactions where SUserSessionID LIKE "E1A0%";
SELECT sum(DMillisToProcess) FROM transactions WHERE SUserSessionID LIKE "E1A0%";
SELECT distinct aRemoteIPAddress FROM transactions ORDER BY aRemoteIPAddress;
SELECT distinct aRemoteIPAddress FROM transactions WHERE
( tDateAndTime>'2021-05-14 10:00:00' AND
tDateAndTime<'2021-05-14 12:30:00' );
SELECT aRemoteIPAddress, rFirstLineOfRequest, SUserSessionID FROM transactions
WHERE sHTTPStatusCode = 404;
SELECT sum(BBytesSent) FROM transactions WHERE
( tDateAndTime>'2021-05-14 00:00:00' AND tDateAndTime<'2021-05-14 23:59:59' )
AND
rFirstLineOfRequest NOT LIKE "%konakartadmin%";
select SUserSessionID, count(*) as cnt
from transactions
group by SUserSessionID order by cnt DESC;
select SUserSessionID, count(*) as cnt
from transactions
where rFirstLineOfRequest like "%addToCart%"
and rFirstLineOfRequest like "GET%"
group by SUserSessionID order by cnt DESC;
select rFirstLineOfRequest, sum(BBytesSent), count(*)
from transactions
where rFirstLineOfRequest like "%.png%" and rFirstLineOfRequest like "GET%";
