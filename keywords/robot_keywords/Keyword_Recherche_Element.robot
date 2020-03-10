Recherche Element
    # vElement contient le dossier ou le fichier 
    #Click sur la barre de recherche en haut de la page a droite
    click Element    id=HEADER_SEARCHBOX_FORM_FIELD
    [Arguments]    ${vElement}
    #Saisie du nom du fichier ou du dossier
    Input Text       id=HEADER_SEARCHBOX_FORM_FIELD    ${vElement}
    # Appuyer sur le bouton Entre�
    Press Keys    id=HEADER_SEARCHBOX_FORM_FIELD    ENTER    
    #Pause
    Sleep    3s
    #S'assurer que l'utilisateur est dans la page recherche#
    Element Text Should BE    xpath=//*[@id="HEADER_TITLE"]/span    Rechercher
