*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Go To Home And Reset Counter

*** Test Cases ***
At start the counter is zero
    Page Should Contain  nappia painettu 0 kertaa

When button pressed twice the counter is two
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 2 kertaa

*** Keywords ***
Go To Home And Reset Counter
    Go To  ${HOME_URL}
    Click Button  Nollaa