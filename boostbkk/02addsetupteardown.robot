*** Settings ***
Library   Selenium2Library

Resource   ${EXECDIR}/boostbkk/resource/keyword.robot
Resource   ${EXECDIR}/boostbkk/resource/variable.robot

# Test teardown   Close Browser


*** Variables ***

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
