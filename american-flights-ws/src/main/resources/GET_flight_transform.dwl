// DataWeave 2.0 script
%dw 2.0
output application/json
---
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
}