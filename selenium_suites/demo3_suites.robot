*** Settings ***

Library    SeleniumLibrary
Library    OperatingSystem
*** Test Cases ***

Tc1
      Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
      Open Browser     url=https://www.salesforce.com/in/form/signup/freetrial-sales/?d=topnav2-btn-ft     browser=chrome
      Maximize Browser Window
      Set Selenium Implicit Wait    30s
      Input Text    name=FirstName    Shubham
      Input Text    name=LastName    Gupta
      Input Text    name=UserEmail    sguplt.com
      Select From List By Label    name=UserTitle        IT Manager
      Input Text    name=CompanyName    LT
      Select From List By Value    name=CompanyEmployees     250
      Select From List By Label    name=CompanyCountry       United Kingdom
      Click Element    xpath=(//div[@class=' Checkbox-ui']0[1]
      Click Element    name=Start My Free Trial
      Element Text Should Be    locator=xpath=//span[contains(@id,'UserPhone')]          Enter a valid phone number

