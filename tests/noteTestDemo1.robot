*** Settings ***
Documentation    Google's note app test demo
Library          AppiumLibrary
Library          ../customLibraries/AppiumManager.py
Resource         ../pageObjects/general.robot
Resource         ../pageObjects/homePage.robot
Suite Setup      start appium service
Suite Teardown   stop appium service
*** Test Cases ***
Add new note with multiple items
    general.Opeen Google Keep Note App
    general.Skip welcome screen
    homePage.Click on the plus icon to create a new note
    homePage.Add note text, note title and click on the back button
    homePage.Verify what the note was created

