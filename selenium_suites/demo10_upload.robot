*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://demo.openemr.io/b/openemr
      Input Text    id=authUser    admin
      Input Password    id=clearPass    pass
      Select From List By Label    name=languageChoice     Bengali
      Click Element    id=login-button
      Click Element    xpath=//div[text()='Message']
      Select Frame    xpath=//iframe[contains(@src,'messages.php')]
      Click Element    partial link=Add New
      Select From List By Label    id=form_note_type         Pharmacy
      Select From List By Label    id=form_message_status     New
      Select From List By Index    id=users      1
      Input Text    id=note    hello
      Click Element    id=newnote
      Element Should Contain    id=error_reply_to    Please choose a patient