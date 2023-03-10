#https://gotujemy.pl/forum

*** Settings ***
Library     SeleniumLibrary

*** Variables ***
@{emails}  email1   email2   email3   email4   email5
@{passwords}   pass1   pass2   pass3   pass4   pass5



*** Test Cases ***
Registration In Forum
    [Arguments]  ${email}  ${password}
    open browser    https://gotujmy.pl/forum/  Chrome  #executable_path=C:/chromedriver/chromedriver.exe
    Sleep  3
    run keyword and ignore error  click button    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
    Sleep  7
    click element    //*[@id="navTop"]/nav/ul[1]/li[2]/a
    Sleep  7
    run keyword and ignore error  click button    //*[@id="tcf277-permissions-modal"]/div[3]/div/button[2]
    Sleep  3
    input text    //*[@id="f_cmu_email"]    kamil@wp.pl
    input text    //*[@id="f_cmu_email2"]    kamil@wp.pl
    input text    //*[@id="f_cmu_password"]    haslo
    input text    //*[@id="f_cmu_password2"]    haso
    Checkbox Should Not Be Selected  //*[@id="newsletter_agree"]
    select checkbox  //*[@id="newsletter_agree"]
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[2]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[2]/input
    Checkbox Should Not Be Selected  //*[@id="user_register_form"]/fieldset/label[3]/input
    select checkbox  //*[@id="user_register_form"]/fieldset/label[3]/input
    run keyword and ignore error  click button  //*[@id="user_register_form"]/fieldset/footer/button
    capture page screenshot    #${project_path}/screen1.png