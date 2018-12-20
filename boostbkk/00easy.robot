*** Settings ***
Library   Selenium2Library


# Test teardown   Close Browser


*** Variables ***


*** Test Cases ***

test mainpage
  Open Browser        https://www-stg.boostbkk.com/   chrome
  Location Should Be    https://www-stg.boostbkk.com/
  Title Should Be    BOOST

test racing page
  Open Browser        https://racing-stg.boostbkk.com/   chrome
  Location Should Be    https://racing-stg.boostbkk.com/
  Title Should Be    BOOST RACING | Home

test fitness page
  Open Browser        https://fitness-stg.boostbkk.com/   chrome
  Location Should Be    https://fitness-stg.boostbkk.com/
  Title Should Be    BOOST FITNESS | Home

  test fitness page
    Open Browser        https://boxing-stg.boostbkk.com/   chrome
    Location Should Be    https://boxing-stg.boostbkk.com/
    Title Should Be    BOOST BOXING | Home

*** Keywords ***
