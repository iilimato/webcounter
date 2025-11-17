*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Go To Home And Reset Counter

*** Test Cases ***
Set Counter Value To 100
    Input Text  value  100
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu 100 kertaa

Set Counter Value To Negative Number
    Input Text  value  -5
    Click Button  Aseta arvo
    Page Should Contain  nappia painettu -5 kertaa

*** Keywords ***
Go To Home And Reset Counter
    Go To  ${HOME_URL}
    Click Button  Nollaa