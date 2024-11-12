// input: json
[
    {
        "firstname": "Faran",
        "lastname": "Khan"
    },
    {
        "firstname": "Abdullah",
        "lastname": "Tahir"
    }
]

// DataWeave code
%dw 2.0
output application/xml
---
users: {(payload map ((user)) -> {
    user: {
        firstname: user.firstname,
        lastname: user.lastname
    }}
)}
// by using {()}, each element in the array is converted to an object as a key-value pair

// output: xml
<users>
  <user>
    <fname>Faran</fname>
    <lname>Khan</lname>
  </user>
  <user>
    <fname>Abdullah</fname>
    <lname>Tahir</lname>
  </user>
</users>