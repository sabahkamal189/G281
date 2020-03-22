Supprimer une propriété dans un type personnalisé 
    # vModele contient le nom de modèle 
    # vType contient le type personnalisé 
    # vPropriete contient la propriété à supprimer
    [Arguments]    ${vModele}    ${vType}    ${vPropriete}        
    # Cliquer sur menu Outils dmin en haut de la page
    Click Link    link:Outils admin
    #  S'assurer que la page est chargée
    Wait Until Element Is Visible    css:#HEADER_TITLE > span
    # Vérifier que la page chargée est correcte 
    Element Should Contain    css:#HEADER_TITLE > span    Outils admin
    # Cliquer sur un rubrique : Gestionnaire de modèles 
    Click Link    link:Gestionnaire de modèles
    #  S'assurer que la page est chargée
    Wait Until Element Is Visible    css:#HEADER_TITLE > span
    #  Vérifier que l'élément est présent
    Element Should Contain    css:#HEADER_TITLE > span    Gestionnaire de modèles
    # Attendre pour la page au total va charger
    Sleep    2s
    # Cliquer sur Modele existe
    Click Element     xpath://span[@class='value' and text()='${vModele}']    
    # Attendre pour la page va charger
    Sleep    3s   
    # Cliquer sur Type personnalisé existe de Modele                                      
    Click Element     xpath://span[@class='value' and text()='${vModele}:${vType}']  
    #  S'assurer que la page est chargé
    Wait Until Page Contains     ${vModele}:${vPropriete}
    # Cliquer sur la liste déroulante d'actions disponibles    
    Click Element     xpath://*[text() = '${vModele}:${vPropriete}']//ancestor::tr//td[7]//*[text()='Actions']
    # Cliquer sur l'action Supprimer
    Click Element     xpath:/html/body/div[32]/div/div/div[2]/table/tbody/tr[2]/td[1]/img  
    # Cliquer dans un message de confirmation sur Supprimer
    Click Element    //div[@aria-labelledby='CMM_DELETE_PROPERTY_DIALOG_title']/child::div[2]/div[@class='footer']//span[@class='dijitReset dijitInline dijitButtonText']
    # S'assurer que la proprieté a été supprimée
    Element Should Not Contain    //div[@class='alfresco-lists-views-AlfListView bordered']/child::div[1]    ${vModele}:${vPropriete}       
    # Faire un capture d'ecran
    Capture Page Screenshot
