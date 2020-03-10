Logout
    sleep    3s
    click    id=HEADER_USER_MENU_POPUP
    Wait Until Element Is Visible    id=HEADER_USER_MENU_LOGOUT_text
    click    id=HEADER_USER_MENU_LOGOUT_text
    [Teardown]    Close Browser
