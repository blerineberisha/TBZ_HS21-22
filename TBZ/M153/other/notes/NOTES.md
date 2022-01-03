#M153

Problem bei SELECT in SELECT statement: 

Geht 2x durch ALLE daten, bis die Voraussetzungen erfüllt werden. 

Lösung:

JOIN anstatt SELECT innerhalb eines SELECT statements. 
-> GROUP BY cant be used with WHERE, only with HAVING

