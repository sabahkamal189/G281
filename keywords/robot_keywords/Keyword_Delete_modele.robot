Delete modele
    # ${vmodel_name} est le nom que vous voulez supprimer
    [Arguments]     ${vmodel_name}
    # click outils admin
    click element    id=HEADER_ADMIN_CONSOLE_text
    # click gestionnaire modele
    click element    xpath=//*[@id="page_x002e_tools_x002e_admin-console_x0023_default-body"]/ul[1]/li[7]/span/a
    # click actions
    sleep    3s
    click element    xpath=//*[text() = '${vmodel_name}']//ancestor::tr//td[4]//*[text() = 'Actions']
    # click delete
    sleep    3s
    click element    xpath=//div[@class='dijitPoupup Popup']//*[text() = 'Supprimer']
    # click supprimer
    click element    xpath=//div[@class='footer']//*[text()='Supprimer']
    # check point
    Page Should Not Contain Element    xpath=//*[text()='${vmodel_name}']
    
