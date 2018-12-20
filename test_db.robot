*** Settings ***
Library    DatabaseLibrary


*** Test Case ***
Test Json Data
     Connect to Database   dbConfigFile=${EXECDIR}/aagprogram/resource/db.cfg
     ${result}    Query    select * from aag_api_systemsetting
     Log     ${result[0][2]}
     ${json}=      Evaluate    json.loads('''${result[0][2]}''')     json
     Log    ${json[0]}
     Log    ${json[0]['label']}
     Log    ${json[0]['check']}
     : FOR      ${INDEX}  IN RANGE  0   11
     \  Log    ${json[${INDEX}]['key']}
     \  Run Keyword If    '${json[${INDEX}]['key']}' == 'nick_name'    Log     ${json[${INDEX}]['check']}
