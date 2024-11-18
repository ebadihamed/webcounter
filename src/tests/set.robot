*** Settings ***
Resource  resource.robot
Suite Setup  Open And Configure Browser
Suite Teardown  Close Browser

*** Test Cases ***
Counter is incremented correctly
    Go To  ${HOME_URL}
    Title Should Be  Laskuri
    Page Should Contain  nappia painettu 0 kertaa
    Input Text  textaseta  10
    Click Button  aseta
    Page Should Contain  nappia painettu 10 kertaa
    Click Button  Nollaa
    Page Should Contain  nappia painettu 0 kertaa
    


