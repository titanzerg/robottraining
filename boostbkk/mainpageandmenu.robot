*** Settings ***
Library   Selenium2Library


Test teardown   Close Browser


*** Variables ***

${urlmainpage}    https://www-stg.boostbkk.com/
${urlracing}      https://racing-stg.boostbkk.com/
${urlfitness}     https://fitness-stg.boostbkk.com/
${urlboxing}      https://boxing-stg.boostbkk.com/

${titlemainpage}    BOOST
${titleracing}      BOOST RACING | Home
${titlefitness}     BOOST FITNESS | Home
${titleboxing}      BOOST BOXING | Home

*** Test Cases ***

test mainpage
  ตรวจสอบการเข้าถึงหน้าเพจ    ${urlmainpage}   ${titlemainpage}

test racing page
  ตรวจสอบการเข้าถึงหน้าเพจ    ${urlracing}   ${titleracing}

test fitness page
  ตรวจสอบการเข้าถึงหน้าเพจ    ${urlfitness}   ${titlefitness}

test boxing page
  ตรวจสอบการเข้าถึงหน้าเพจ    ${urlboxing}   ${titleboxing}


*** Keywords ***

ตรวจสอบการเข้าถึงหน้าเพจ
    [Arguments]     ${urlpage}  ${title}
    Open Browser    ${urlpage}    gc     remote_url=http://10.11.0.3:4444/wd/hub
    Location Should Be    ${urlpage}
    Title Should Be    ${title}
