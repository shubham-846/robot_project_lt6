*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://netbanking.hdfcbank.com/netbanking/
      Select Frame    xpath=//frame[@name='login_page']
      Input Text    name=fldLoginUserId    1161116
      Click Element    link=CONTINUE
      Unselect Frame

