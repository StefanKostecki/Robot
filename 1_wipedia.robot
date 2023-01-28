*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${wikipedia_login}    RobotTests
${wikipedia_password}    RobotFramewok
${error_message}    Podany login lub hasło są nieprawidłowe. Spróbuj jeszcze raz.
*** Keywords ***
Log In Wikipedia
    [Arguments]  ${login}    ${password}
    Open Browser    https://pl.wikipedia.org    Chrome
    Click Element   id:pt-login
    Input Text    id:wpName1    ${login}
    Input Password    id:wpPassword1    ${password}
    Checkbox Should Not Be Selected    id:wpRemember
    Select checkbox    id:wpRemember
    Click Button    id:wpLoginAttempt

*** Test Cases ***

Search_in_Wikipedia
    Log In Wikipedia    ${wikipedia_login}    ${wikipedia_password}
    Input Text    searchInput    Lewandowska Anna
    Click Button    id:searchButton
    Sleep    5
    Capture Page Screenshot     #screen.png

Unsuccessful_Login_To_Wikipedia
    Log In Wikipedia    ${wikipedia_login}     123123
    Wait Until Element Is Visible    css:.mw-message-box-error    timeout=20
    ${my_error_message}    Get Text    css:.mw-message-box-error
    Log    ${my_error_message}
    Log To Console    ${my_error_message}
    Should Be Equal As Strings    ${error_message}   ${my_error_message}