*** Variables ***
${string}    piesek
@{list}     pierwszy    drugi     trzeci    czwarty    piaty
&{dictionary}      slowo=${string}   numer=30    lista=@{list}
@{imiona}    Kamil    Marta    Augusto    Marek
@{nazwisko}    Kowalski    malinowski    malinowski    Nowak    nijaki

*** Test Cases ***
For Loop In Dictionary
	Log    ${dictionary}
	FOR    ${keys_and_values}    IN    &{dictionary}
		Log    ${keys_and_values}
	END


For Loop In Range With Index
	FOR    ${i}    IN RANGE    4
		Log   ${imiona}[${i}] ${nazwisko}[${i}]
	END



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
