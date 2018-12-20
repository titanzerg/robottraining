*** Settings ***
Library  AppiumLibrary

Suite Setup   Open Application   ${REMOTE_URL}  platformName=Android  deviceName=test  app=${EXECDIR}/apk_source/ApiDemos-debug.apk
Suite teardown  Close Application

*** Variables ***
${REMOTE_URL}   http://127.0.0.1:4723/wd/hub

*** Test Cases ***
Test Sample Button
  Click Element   //android.widget.TextView[@content-desc="Content"]
  Sleep    3s
  Click Element   //android.widget.TextView[@content-desc="Clipboard"]
  Sleep   20s
