*** Settings ***
Library  SeleniumLibrary
Library  RequestsLibrary
Library  Process
Library  test.py
Resource  testAutoItLib.robot
*** Variables ***
${browser}   chrome
${Base_URL}  http://localhost:3000
${url}   https://www.google.com/
*** Test Cases ***
TC_001_Get_Request
     Create session  Get_Commandes  ${Base_URL}
     ${response}=  get request  Get_Commandes  /actions
     log to console  ${response.status_code}
     ${status_code}=  convert to string  ${response.status_code}
     run_robot_keyword  ${response.content}
     
     #VALIDATIONS
     should be equal  ${status_code}  200 
     
     #Start Process    helloworld.py  ${response.content}
     #log to console  ${response.content}
     #${result}=  run process  python  processHlloWorld.py
     #log to console  ${result.stdout}    
*** Keywords ***
 Go to google
     Open Browser     ${url}     ${browser}

