*** Settings ***
Library  SeleniumLibrary
Library  Process
Library  test.py

*** Variables ***
${browser}   chrome
${url}   http://tinyupload.com/
${text}   File to upload

*** Keywords ***
 Go to tinyupload
     Open Browser     ${url}     ${browser}
     
 Get jsElement
     ${element}=	Execute Javascript	return window.document.getElementsByName('uploaded_file')[0];
     [Return]	${element}


