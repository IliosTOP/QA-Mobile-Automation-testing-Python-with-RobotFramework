*** Settings ***
Documentation       file with keywords and variables for the home page
Library             AppiumLibrary
Library             ../customLibraries/Random.py
*** Variables ***
${new_note_button}          com.google.android.keep:id/new_note_button
${note_title}               com.google.android.keep:id/editable_title
${note_text}                com.google.android.keep:id/edit_note_text
${back_button}              //*[@resource-id="com.google.android.keep:id/toolbar"]/android.widget.ImageButton
*** Keywords ***
Click on the plus icon to create a new note
    wait until element is visible           ${new_note_button}
    click element                           ${new_note_button}
Add note text, note title and click on the back button
    ${random_title}             get random string       5
    Set Global Variable         ${random_title}
    ${random_text}              get random string       6
    wait until element is visible           ${note_title}
    input text                              ${note_text}       ${random_text}
    input text                              ${note_title}      ${random_title}
    click element                           ${back_button}
Verify what the note was created
    wait until element is visible           ${new_note_button}
    page should contain text                ${random_title}
