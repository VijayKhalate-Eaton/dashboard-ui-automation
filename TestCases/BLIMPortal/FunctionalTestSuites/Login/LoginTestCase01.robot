*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://nubisnet-dev.azurewebsites.net/login

*** Test Cases ***
LoginTest
    ${default_implicit_wait}=  Get Selenium Implicit Wait

    Set Selenium Implicit Wait  60s
    ${custom_implicit_wait}=   Get Selenium Implicit Wait

    open browser    ${url}  ${browser}
    #open browser    ${qaurl}  ${browser}
    loginToCumulosityDashboard
#    close browser

*** Keywords ***
loginToCumulosityDashboard
        Maximize Browser Window
        input text  xpath://*[@id="mat-input-0"]    test_automation_qa_0@machinery-monitoring.com
        sleep   2s
        input text  xpath://*[@id="mat-input-1"]    AutomationTest@2022
        sleep   2s
        click element   xpath:/html/body/app-main/app-login/div/form/div/button/span[1]
        sleep   2s
        click element   xpath:/html/body/app-main/saentis-main/blui-drawer-layout/mat-sidenav-container/mat-sidenav/div/app-sidenav/blui-drawer/div/div/blui-drawer-body/div/blui-drawer-nav-group/div/mat-nav-list/blui-drawer-nav-item[1]/div/blui-info-list-item/mat-list-item/span/span[2]/div[1]/div
        sleep   10s