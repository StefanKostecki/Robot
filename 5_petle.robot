*** Variables ***
${string}    piesek
@{list}     pierwszy    drugi     trzeci    czwarty    piaty
&{dictionary}      slowo=${string}   numer=30    lista=@{list}

*** Test Cases ***
For Loop In List
    FOR    ${i}    IN    @{list}
        Log    ${i}
    END

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
