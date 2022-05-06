*** Settings ***
Library     DateTime

*** Test Cases ***
TC1
     Log To Console    hello everyone
     Log To Console    Shubham
TC2
     ${base}   set variable     25
     ${height}   set variable      1
     Log To Console     ${base}
     ${result}     Evaluate     (${base}*${height})/2
     Log To Console     ${result}
TC3
     ${base1}   Set Variable     25
     ${base2}   Set Variable     25
     ${height}   Set Variable     1
     ${res}  Evaluate    (${base1}+${base2})*${height}/2
     Log To Console    ${res}
TC4

