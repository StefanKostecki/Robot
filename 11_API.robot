*** Settings ***
Library               RequestsLibrary

#https://simple-books-api.glitch.me

*** Variables ***
${token}    2e4f8f0196436b4cc64bca8e0759fffd0ec3d24d0c89db25d22261406b533975
*** Test Cases ***
API_GET_TEST_1
    ${get_response}    GET    https://simple-books-api.glitch.me/status
    Log to console    status ${get_response}
    ${register_json}    create dictionary      clientName=Kamils    clientEmail=kamils@example.com
    ${post_register_response}    POST    https://simple-books-api.glitch.me/api-clients/
    ...                                   json=${register_json}

