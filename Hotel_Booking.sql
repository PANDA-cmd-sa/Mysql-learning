
Guests(GuestID PK, Name)
Rooms(RoomID PK, Type, Price)
Bookings(BookingID PK, GuestID FK, RoomID FK, Date)

SELECT Guests.Name, Rooms.Type
FROM Bookings
JOIN Guests ON Bookings.GuestID = Guests.GuestID
JOIN Rooms ON Rooms.RoomID = Bookings.RoomID;
