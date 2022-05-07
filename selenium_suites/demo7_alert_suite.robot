*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://netbanking.hdfcbank.com/netbanking/IpinResetUsingOTP.htm
      Input Text    name=fldLoginUserId    n sjb js s
      Click Element    xpath=//img[@alt='Go']
      ${alert_text}    Handle Alert     action=ACCEPT
      Log To Console   ${alert_text}
      log    ${alert_text}