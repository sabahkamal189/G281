*** Settings ***
Library    Screenshot
Library    SeleniumLibrary
*** Keywords ***
Rechercher un site
    # vSite contient le nom de la site recherch�
    [Arguments]    ${vSite}
    # Cliquer sur le menu Sites pour ouvrir la liste d�roulante d'options disponibles
    Click Element    css:#HEADER_SITES_MENU_text
    # Attendre pour la page va charger
    Sleep    3s
    # Cliquer sur le link Recherche de sites
    Click Link    link:Recherche de sites
    # S'assurer que la page est charg�e 
    Wait Until Element Is Visible    xpath://span[@class='alfresco-header-Title__text has-max-width']
    # Saisir le nom de site recherch�
    Input Text     css:#template_x002e_site-finder_x002e_site-finder_x0023_default-term     ${vSite}
    # Cliquer sur le bouton de recherche
    Click Button   css:#template_x002e_site-finder_x002e_site-finder_x0023_default-button-button
    # Attendre pour la page va charger
    Sleep    3s
    # Verifier que le r�sultat de recherche est apparu et que la site recherch� existe
    ${check_element}=  Run Keyword and Return Status   Wait Until Page Contains Element    link:${vSite}    10s
    # Cliquer sur le site recherch�
    Run Keyword If      '${check_element}' == 'True'     Click Element   link:${vSite} 
    # Faire un capture d'ecran
    Capture Page Screenshot