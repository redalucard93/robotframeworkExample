*** Settings ***
Library  SeleniumLibrary
Library  Process
Library  helloworld.py
*** Variables ***
${browser}   chrome
${url}   http://tinyupload.com/
${text}   File to upload
*** Test Cases ***
TC_001_Upload_file
     Go to tinyupload
     ${elem}=  Get WebElement     name=uploaded_file
     ${elemJavaScript}=  Get jsElement
     log to console  ${elem}
     Wait Until Page Contains  ${text}
     Click Element  xpath://input[@name="uploaded_file"]  CTRL  action_chain=False
     ${result}=  execute_autoIt
     Click Element  xpath://img[@src="images/button_upload.gif"]  CTRL  action_chain=False
 
*** Keywords ***
 Go to tinyupload
     Open Browser     ${url}     ${browser}
     
 Get jsElement
     ${element}=	Execute Javascript	return window.document.getElementsByName('uploaded_file')[0];
     [Return]	${element}


