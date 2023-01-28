*** Variables ***
${string}    piesek
2{list}     pierwszy    drugi     trzeci    czwarty    piaty

*** Test Cases ***
For Loop In Range 10
    FOR    ${i}    IN RANGE    10
        Log    ${i}
    END

For Loop In Range 4 10
    FOR    ${i}    IN RANGE    4    10
        Log    ${i}
    END

For Loop In Range 4 30 3
    FOR    ${i}    IN RANGE    4    30    3
        Log    ${i}
    END
