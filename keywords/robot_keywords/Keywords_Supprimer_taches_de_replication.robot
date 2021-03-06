Supprimer taches de replication
    # ${vtache_name} est le nom que vous voulez supprimer
    [Arguments]    ${vtache_name}
    # click outils admin
    click element    id=HEADER_ADMIN_CONSOLE_text
    # click Gestion des tâches de réplication
    click element    xpath=//*[@id="page_x002e_tools_x002e_admin-console_x0023_default-body"]/ul[2]/li/span/a
    # click tache
    click element    xpath=//div[@class='container-panel']//*[text()='${vtache_name}'] 
    # click supprimer
    click element    xpath=//div[@id='alf-content']//*[text()='Supprimer']
    # confirm supprimer
    click element    xpaht=//*[@id='prompt_c']//*[text()='Supprimer']  
    # check point 
    Page Should Not Contain Element    xpath=//*[text()='${vtache_name}']
    
