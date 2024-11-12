// input: json
{
    "firstname": "Faran",
    "lastname": "Khan"
}

// DataWeave code
%dw 2.0
output application/xml
var mname = () -> "Ahmad"
var lname = (aString) -> upper(aString)
---
name: {
    fname: payload.firstname,
    mname: mname(),
    lname: lname(payload.lastname)
}

// output: xml
<name>
  <fname>Faran</fname>
  <mname>Ahmad</mname>
  <lname> KHAN</lname>
</name>