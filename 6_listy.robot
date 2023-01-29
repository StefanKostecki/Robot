*** Settings ***
Library  Collections

*** Variables ***
@{my_list}    1  2  3  4
${zmienna}  4
${slowo}     WSB

*** Test Cases ***
List Basic
    FOR    ${index}    IN    @{my_list}
		Log   ${index}
	END

	append to list      ${my_list}    ${4}
	append to list      ${my_list}    wyraz
	append to list      ${my_list}    ${slowo}
	Log    ${my_list}
