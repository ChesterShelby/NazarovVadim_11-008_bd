-- №1
select * from flights where departure_airport='KZN' and arrival_airport='MQF';


-- №2
SELECT * FROM flights
Where
      departure_airport='DME' or  departure_airport='SVO' or departure_airport='VKO' AND
      (scheduled_departure='2017-08-12 12:00:00+03' or scheduled_arrival='2017-06-18 12:30:00+03');

--№3
SELECT * FROM flights f
JOIN airports_data ad1
ON (f.departure_airport = ad1.airport_code AND ad1.timezone = 'Europe/Moscow')
JOIN airports_data ad2
ON (f.arrival_airport = ad2.airport_code AND ad2.timezone = 'Europe/Moscow');