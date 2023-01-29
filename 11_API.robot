*** Settings ***
Library               RequestsLibrary

#https://simple-books-api.glitch.me

*** Test Cases ***
API_GET_TEST
    ${get_response}    GET    https://simple-books-api.glitch.me
    Log to console    ${get_response}