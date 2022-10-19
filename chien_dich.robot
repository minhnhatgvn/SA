*** Settings ***
Documentation       Simple example using AppiumLibrary

Library             AppiumLibrary


*** Variables ***
${ANDROID_AUTOMATION_NAME}      UIAutomator2
# ${ANDROID_APP}    ${CURDIR}/demoapp/ApiDemos-debug.apk
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     %{ANDROID_PLATFORM_VERSION=12}


*** Test Cases ***
20 games chien dich
    Open Test Application
    Chon doi thu vua mieng
    Vao tran
    Thoat ra ngoai


*** Keywords ***
Open Test Application
    Open Application    http://0.0.0.0:4723/wd/hub    automationName=${ANDROID_AUTOMATION_NAME}
    ...    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}

Chon doi thu vua mieng
    Click A Point    2511    1289
    Click A Point    2195    693

Vao tran
    Click A Point    2511    1289

Thoat ra ngoai
    Click A Point    1126    500
