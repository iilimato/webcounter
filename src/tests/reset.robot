*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser
Test Setup  Go To Home And Reset Counter

*** Test Cases ***
When counter has a nonzero value and it is reset the value becomes zero
    Click Button  Paina
    Click Button  Paina
    Click Button  Paina
    Page Should Contain  nappia painettu 3 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa

*** Keywords ***
Go To Home And Reset Counter
    Go To  ${HOME_URL}
    Click Button  Nollaa