ตรวจสอบการเข้าถึงหน้าเพจ
    [Arguments]     ${urlpage}  ${title}
    Open Browser    ${urlpage}    gc
    # remote_url=http://10.11.0.3:4444/wd/hub
    Location Should Be    ${urlpage}
    Title Should Be    ${title}
