*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser      url=https://www.medibuddy.in/      browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Go To    url=https://www.medibuddy.in/
      Click Element    id=wzrk-cancel
      Click Element    link=For Employer
      Log Title
      Switch Window      MediBuddy LaunchPad
      Input Text    id=getInTouchName    Ravan
      Input Text    name=getInTouchEmail    hdbudndn.com
      Input Text    name=getInTouchMobile    25111
      Input Text    name=getInTouchDesignation    Ram
      Input Text    name=getInTouchEmpCount    10
      Click Element   xpath=//button[text()='Get in Touch']
      Element Text Should Be    //div[contains(Text(),'digits')]       mobile number should be 10 digits
      Element Should Contain    //p[contains(    expected


      #click on not now
      #click on for Employer


