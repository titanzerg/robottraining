*** Settings ***
Library    SeleniumLibrary
*** Test Case ***
Open Headless Browserff
    Open Browser    https://www.google.com    ff     remote_url=http://10.11.0.3:4445/wd/hub
    Close Browser

Open Headless Browsergc
    Open Browser    https://www.google.com    gc     remote_url=http://10.11.0.3:4444/wd/hub
    Close Browser
