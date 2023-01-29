#https://gotujmy.pl/forum/

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{emails}  email1  email2  email3  email4  email5
@{password}  pass1  pass2  pass3  pass4  pass5
@{message}    Dziekujemy za zalozenie nowego konta.
*** Keywords ***
Open Browser
    Open Browser    https://gotujmy.pl/forum/    Chrome
    Maximize Browser Window

Registration In Forum
    [Arguments]    ${name}    ${password}
    Scrol Element Into View     //*[@id="tcf277-permisions-modal"]/div[3]/div/button[2]
    Run Keyword And Ignore Error    click button    //*[@id="tcf277-permisions-modal"]/div[3]/div/button[2]
    Click Element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
    Run Keyword And Ignore Error    click button    //*[@id="tcf277-permisions-modal"]/div[3]/div/button[2]

    imput text    //*[@id=f_cmu_email"]    ${name}
    imput text    //*[@id=f_cmu_email2"]    ${name}
    imput text    //*[@id=f_cmu_password"]    ${password}
    imput text    //*[@id=f_cmu_password2"]    ${password}
    Checkbox Should Not Be Selected    //*[@id'newsletter_ogree"]
    select checkbox     //*[@id'newsletter_ogree"]
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[2]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[2]/input
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[3]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[3]/input
    Click Button    //*[@id="user_register_form"]/fieldset/footer/button
    Wait Until Element Is Visible    //*[@id="main_content"]/div/div/h1    timeout7
    @{message}    Get Text    //*[@id="main_content"]/div/div/h1
    Log To Console    @{message}
    Should Be Equal As Strings    @{my_message}    @{message}
    Capture Page Screenshot

*** Test Cases ***
Registration Of Multiple User
    FOR    ${i}    IN RANGE    @{emails}
        Registration In Forum  @{emails}[${i}]    @{password}[${i}]
        Log    User    @{emails}[${i}]
    END

