*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
   Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
   Open Browser     url=https://www.Facebook.com/     browser=chrome
   Maximize Browser Window
   Set Selenium Implicit Wait    30s
   Click Element    link=Create New Account
   Input Text    name=firstname    shubham
   Input Text    name=lastname    Gupta
   Input Text    name=reg_email__        anchal15121999@gmail.com
   Input Text    name=reg_email_confirmation__    anchal15121999@gmail.com
   Input Password    id=password_step_input   Anchal@15
   Select From List By Label    id=day      20
   #month as dec
   #year as 2000
   Click Element    xpath=//input[@value='-1']
   Click Element    name=websubmit
   close Browser


