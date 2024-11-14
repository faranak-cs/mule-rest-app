// DataWeave 2.0 script
// %dw 2.0
// output application/json
// ---
// payload map ( object, index ) -> {
//     ID: object.ID,
//     code: (object.code1 default "") ++ (object.code2 default ""),
//     price: object.price default 0,
//     departureDate: object.takeOffDate as String default "",
//     origin: object.fromAirport default "",
//     destination: object.toAirport default "",
//     emptySeats: object.seatsAvailable default 0,
//     plane: {
//         "type": object.planeType default "",
//         totalSeats: object.totalSeats default 0
//     }
// }

// payload map {} : array of empty objects
//      OR
// payload map (object, index) -> {}

%dw 2.0
output application/json
---
[
    {
        ID: 1,
        code: "ER38sd",
        price: 400,
        departureDate: "2017/07/26",
        origin: "CLE",
        destination: "SFO",
        emptySeats: 0,
        plane: {
            "type": "Boeing 737",
            totalSeats: 150
        }
    }, 
    {
        ID: 2,
        code: "ER45if",
        price: 540.99,
        departureDate: "2017/07/27",
        origin: "SFO",
        destination: "ORD",
        emptySeats: 54,
        plane: {
            "type": "Boeing 777",
            totalSeats: 300
        }
    }
]