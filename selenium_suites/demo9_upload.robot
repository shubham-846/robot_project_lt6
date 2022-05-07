*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://smallpdf.com/pdf-to-word
      Choose File    xpath=//input[@type='file']    C:${/}Users${/}shubham gupta${/}Documents${/}A1880704887_17688_16_2018_pointers.pdf
      ${current_title}       Get Title
      Log To Console    ${current_title}
      ${url}     Get Location
      Log To Console    ${url}
