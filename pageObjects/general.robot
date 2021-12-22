*** Settings ***
Documentation       robot file with general Keywords and Variables
Library             AppiumLibrary
*** Variables ***
${platformName}         Android
${platformVersion}      11.0
${deviceName}           Xiaomi Redmi Note 8 Pro
${appPackage}           com.google.android.keep
${appActivity}          .activities.BrowseActivity
${skip_button}          com.google.android.keep:id/skip_welcome

*** Keywords ***
Opeen Google Keep Note App
    open application        http://localhost:4723/wd/hub      platformName=${platformName}
    ...     platformVersion=${platformVersion}  deviceName=${deviceName}  appPackage=${appPackage}
    ... 	appActivity=${appActivity}

Skip welcome screen
    Click Element       ${skip_button}

8956