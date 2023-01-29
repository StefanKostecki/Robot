*** Settings ***
Library               RequestsLibrary

#https://simple-books-api.glitch.me

*** Test Cases ***
API_GET_TEST_1
    ${get_response}    GET    https://simple-books-api.glitch.me/status
    Log to console    status ${get_response}

API_GET_TEST_2
    ${get_response}    GET    https://simple-books-api.glitch.me/books
    Log to console    books ${get_response}