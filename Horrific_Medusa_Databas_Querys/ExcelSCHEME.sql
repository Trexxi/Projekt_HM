/****** Scheme from Blad1******/

  INSERT INTO Scheme (AvailableTime, ArtistID, SchemeStartDate, SchemeEndDate, ReservationID) SELECT * FROM Blad1$;

  /****** Scheme from Blad2******/

  INSERT INTO Scheme (AvailableTime, ArtistID, SchemeStartDate, SchemeEndDate, ReservationID) SELECT * FROM Blad2$;
