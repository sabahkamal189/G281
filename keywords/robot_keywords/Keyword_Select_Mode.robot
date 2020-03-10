Select mode
    # vMode est le mode de colonne affiché pour contenir les dashlets. Ce paramètre peut avoir l'une des valeurs suivantes :
    # -1-column-button
    # -2-columns-wide-right-button
    # -2-columns-wide-left-button
    # -3-columns-button
    # -4-columns-button
    [Arguments]    ${vMode}
    sleep    2s
    #Click sur la roue dentée
    Click Element    xpath=//div[2]/div/div/div/div/img
    #Click sur le bouton "Changer la disposition"
    Click Element                                        id=template_x002e_customise-layout_x002e_customise-user-dashboard_x0023_default-change-button-button
    #Click sur le bouton "Sélectionner" dans le frame Une colonne
    Run Keyword And Ignore Error    Click Element    id=template_x002e_customise-layout_x002e_customise-user-dashboard_x0023_default-select-button-dashboard${vMode}
    #Click sur le bouton "Ok"
    Run Keyword And Ignore Error    Click Element    id=template_x002e_customise-dashlets_x002e_customise-user-dashboard_x0023_default-save-button-button
