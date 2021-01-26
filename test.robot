*** Settings ***
Library  Selenium2Library
Library  RequestsLibrary
*** Variables ***
${browser}   chrome
${Base_URL}  http://thetestingworldapi.com/
${url}   https://www.google.com/

*** Test Cases ***

TC_001_Get_Request
     Create session  Get_Student_Details  ${Base_URL}
     ${response}=  get request  Get_Student_Details  api/studentsDetails
     log to console  ${response.status_code}
     #log to console  ${response.content}
     #VALIDATIONS
     ${status_code}=  convert to string  ${response.status_code}
     should be equal  ${status_code}  200

*** Keywords ***
 Go to google
     Open Browser     ${url}     ${browser}

