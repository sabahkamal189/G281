*** Settings ***
Library    Screenshot
Library    SeleniumLibrary
*** Keywords ***
Supprimer une propri�t� dans un type personnalis� 
    # vModele contient le nom de mod�le 
    # vType contient le type personnalis� 
    # vPropriete contient la propri�t� � supprimer
    [Arguments]    ${vModele}    ${vType}    ${vPropriete}        
    # Cliquer sur menu Outils dmin en haut de la page
    Click Link    link:Outils admin
    #  S'assurer que la page est charg�e
    Wait Until Element Is Visible    css:#HEADER_TITLE > span
    # V�rifier que la page charg�e est correcte 
    Element Should Contain    css:#HEADER_TITLE > span    Outils admin
    # Cliquer sur un rubrique de Gestionnaire de mod�les 
    Click Link    link:Gestionnaire de mod�les
     #  S'assurer que la page est charg�
    Wait Until Element Is Visible    css:#HEADER_TITLE > span
    #  V�rifier que l'�l�ment est pr�sent
    Element Should Contain    css:#HEADER_TITLE > span    Gestionnaire de mod�les
    # Attendre pour la page au total va charger
    Sleep    2s
    # Cliquer sur Modele existe
    Click Element     xpath://span[@class='value' and text()='${vModele}']    
    # Attendre pour la page va charger
    Sleep    3s   
    # Cliquer sur Type personnalis� existe de Modele                                      
    Click Element     xpath://span[@class='value' and text()='${vModele}:${vType}']  
    #  S'assurer que la page est charg�
    Wait Until Page Contains     ${vModele}:${vPropriete}
    # Cliquer sur la liste d�roulante d'actions disponibles    
    Click Element     xpath:/html/body/div[6]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[2]/div[2]/div[1]/div/div/div/div[3]/div/div/div[7]/div[3]/div/table/tbody/tr/td[7]/div/div/div/span[2]
    # Cliquer sur l'action Supprimer
    Click Element     xpath:/html/body/div[32]/div/div/div[2]/table/tbody/tr[2]/td[1]/img  
    # Cliquer dans un message de confirmation sur Supprimer
    Click Element    //div[@aria-labelledby='CMM_DELETE_PROPERTY_DIALOG_title']/child::div[2]/div[@class='footer']//span[@class='dijitReset dijitInline dijitButtonText']
    # S'assurer que la propriet� a �t� supprim�e
    Element Should Not Contain    //div[@class='alfresco-lists-views-AlfListView bordered']/child::div[1]    ${vModele}:${vPropriete}       
    # Faire un capture d'ecran
    Capture Page Screenshot