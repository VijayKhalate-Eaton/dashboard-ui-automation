*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  https://eatonnubisnet-qa.emea.cumulocity.com/

*** Test Cases ***
LoginTest
    ${default_implicit_wait}=  Get Selenium Implicit Wait

    Set Selenium Implicit Wait  60s
    ${custom_implicit_wait}=   Get Selenium Implicit Wait

    open browser    ${url}  ${browser}
    loginToCumulosityDashboard
#    close browser

*** Keywords ***
loginToCumulosityDashboard
        Maximize Browser Window
        sleep   2s
        click element   xpath:/html/body/c8y-ui-root/c8y-bootstrap/c8y-cookie-banner/div/div/div/div[3]/div/div[1]/button
        sleep   2s
        click element   xpath:/html/body/c8y-ui-root/c8y-bootstrap/c8y-login/div/div/c8y-credentials/div/button
        sleep   2s
        input text  xpath://*[@id="idp-discovery-username"]   test_automation_qa_0@machinery-monitoring.com
        sleep   2s
        click element   xpath://*[@id="idp-discovery-submit"]
        sleep   10s
        input text  xpath:/html/body/div[2]/main/div[2]/div/div/form/div[1]/div[2]/div/div[2]/span/input   AutomationTest@2022
        sleep   2s
        click element   xpath:/html/body/div[2]/main/div[2]/div/div/form/div[2]/input
        sleep   10s
        click element   xpath:/html/body/c8y-ui-root/c8y-bootstrap/div/c8y-navigator-outlet/nav/ul/c8y-navigator-node-display[2]/div/a

