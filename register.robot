*** Setting ***
Library    SeleniumLibrary
Test Teardown    Close Browser

*** Variables ***
${Browser}    gc
${url}    https://www.dek-d.com/register/
${email}    patnarin.k82@gmail.com
${username}    cherrrrry-p
${password}    1234567890

*** Test Cases ***
Register by Email
    Open browser and go to url    ${url}
    Click register by Email
    Input email, username, password
    Select birth date and gender
    Click register

*** Keywords ***
Open browser and go to url
    [Arguments]    ${url}
    Open Browser    ${url}    ${Browser}
    Maximize Browser Window

Click register by Email
    Click Element    //span[contains(text(),'สมัครสมาชิกด้วย Email')]

Input email, username, password
    Input Text    id:email-input    ${email}
    Input Text    id:username-input    ${username}
    Input Password    name:password    ${password}

Select birth date and gender
    Click Element    //div[1]/form[1]/ul[1]/li[4]/div[1]/select[1]/option[15]
    Click Element    //option[contains(text(),'มกราคม')]
    Click Element    //option[contains(text(),'2540')]
    Click Element    id:female

click register
    Click Element    //span[contains(text(),'สมัครสมาชิกด้วย Email')]