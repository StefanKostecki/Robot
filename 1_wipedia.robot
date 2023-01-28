*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${wikipedia_login}    RobotTests
${wikipedia_password}    RobotFramewok
${error_message}    Podany login lub hasło są nieprawidłowe. Spróbuj jeszcze raz.
*** Keywords ***
*** Test Cases ***

#Search in Wikipedia
#    Open Browser    https://pl.wikipedia.org    Chrome
#    Click Element   id:pt-login
#    Input Text    id:wpName1    ${wikipedia_login}
#    Input Password    id:wpPassword1    ${wikipedia_password}
#    Checkbox Should Not Be Selected    id:wpRemember
#    Select checkbox    id:wpRemember
#    Click Button    id:wpLoginAttempt
#    Input Text    searchInput    Lewandowska Anna
#    Click Button    id:searchButton
#    Sleep    5
#    Capture Page Screenshot     #screen.png

Unsuccessful Login To Wikipedia
    Open Browser    https://pl.wikipedia.org    Chrome
    Click Element   id:pt-login
    Input Text    id:wpName1    ${wikipedia_login}
    Input Password    id:wpPassword1    123123
    Checkbox Should Not Be Selected    id:wpRemember
    Select checkbox    id:wpRemember
    Click Button    id:wpLoginAttempt
    Wait Until Element Is Visible    css:.mw-message-box-error    timeout=20
    ${my_error_message}    Get Text    css:.mw-message-box-error
    Log    ${my_error_message}
    Log To Console    ${my_error_message}
    Should Be Equal As Strings    ${error_message}   ${my_error_message}