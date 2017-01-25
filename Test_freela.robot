*** Settings ***
Library           ../../../Lib/site-packages/robotide/lib/robot/libraries/Collections.py
Library           Selenium2Library
Library           string
Library           ../../../Lib/site-packages/robotide/lib/robot/libraries/BuiltIn.py
Resource          newresource.txt

*** Test Cases ***
case-testfreela01
    Open Browser    http://www.freela.com.cn/userinfo/user-info!login.action    ie
    Input text    name=account    admin
    Input Password    name=password    Freeworld
    Click Element    id=loginsubmit
    Sleep    10s
    [Teardown]    Close Browser
