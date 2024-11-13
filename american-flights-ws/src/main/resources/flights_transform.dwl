// DataWeave 2.0 script
%dw 2.0
output application/json
---
payload map ( object, index ) -> {
    ID: object.ID,
    code: (object.code1 default "") ++ (object.code2 default ""),
    price: object.price default 0,
    departureDate: object.takeOffDate as String default "",
    origin: object.fromAirport default "",
    destination: object.toAirport default "",
    emptySeats: object.seatsAvailable default 0,
    plane: {
        "type": object.planeType default "",
        totalSeats: object.totalSeats default 0
    }
}

// payload map {} : array of empty objects
//      OR
// payload map (object, index) -> {}