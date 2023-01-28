#https://gotujmy.pl/forum/

*** Settings ***
Library  SeleniumLibrary

*** Variables ***
@{emails}  email1  email2  email3  email4  email5
@{password}  pass1  pass2  pass3  pass4  pass5

*** Test Cases ***
Registration In Forum
    Open Browser    https://gotujmy.pl/forum/    Chrome
    Run Keyword And Ignore Error    click button    //*[@id="tcf277-permisions-modal"]/div[3]/div/button[2]
    Click Element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
    Run Keyword And Ignore Error    click button    //*[@id="tcf277-permisions-modal"]/div[3]/div/button[2]
    Capture Page Screenshot
