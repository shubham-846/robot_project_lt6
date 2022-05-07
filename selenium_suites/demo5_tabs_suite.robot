*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://www.db4free.net/
      Element Should Contain    locator    expected

