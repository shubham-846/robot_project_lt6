*** Settings ***
Library     SeleniumLibrary
Library    OperatingSystem

*** Test Cases ***
TC1
    Append To Environment Variable     path     C:\\Users\\shubham gupta\\Documents\\robot framework\\driver
    Open Browser     url=https://www.Facebook.com/      browser=chrome
    Input Text    id=email    +916283769039
    Input Password    id=pass    Swiggy@Swiggy
    Click Element    name=login

