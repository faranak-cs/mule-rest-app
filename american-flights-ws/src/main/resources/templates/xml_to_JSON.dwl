// input: xml
<users>
    <user firstname="Faran">
        <lastname>Khan</lastname>
    </user>
    <user firstname="Abdullah">
        <lastname>Tahir</lastname>
    </user>
</users>

// DataWeave code
%dw 2.0
output application/json
---
payload.users.*user map ((user) -> {
    firstname: user.@firstname,
    lastname: user.lastname
})

// output: json
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