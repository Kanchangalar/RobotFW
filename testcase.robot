*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
Observer user is able to test sanity flow
    Given User launch browser for Flipkart
    User lands on Login page
    User lands on Electronics items page
    Add to Cart

    
*** Keywords ***
User Launch browser for Flipkart
    Open Browser  https://www.flipkart.com/  Chrome
    Maximize Browser Window
   
User lands on Login page
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[1]/input  9753669914
    Input Text  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[2]/input  Kanchan@1
    Click Button  xpath=/html/body/div[2]/div/div/div/div/div[2]/div/form/div[4]/button
    Sleep  3s
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]/div/img
    Mouse Over  xpath=//*[@id="container"]/div/div[2]/div/div/div[5]/a/div[1]
    Sleep  3s
    
User lands on Electronics items page
    Input Text  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/div/input  boat Stone Grenade 5 W Portable Bluetooth Speaker
    Click Button  xpath=//*[@id="container"]/div/div[1]/div[1]/div[2]/div[2]/form/div/button
    Sleep  3s
    Click Element  xpath=//*[@id="container"]/div/div[3]/div[1]/div[2]/div[2]/div/div[1]/div/a[2]
    Sleep  3s

Add to Cart
    Switch Window  new
    Click Button  xpath=//*[@id="container"]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[1]/button
    Sleep  5s






