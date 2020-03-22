Delete un element
    # ${velement_name} est le nom que vous voulez supprimer
    [Arguments]    ${velement_name}
    #serche element by name
    Input Text    xpath=//*[@id="HEADER_SEARCHBOX_FORM_FIELD"]    ${velement_name}
    Press Keys    xpath=//*[@id="HEADER_SEARCHBOX_FORM_FIELD"]    ENTER
    #select first element
    click element    id=FCTSRCH_SEARCH_RESULT_SELECTOR
    click element    xpath=//*[text()='Eléments sélectionnés...']
    click element    id=onActionDelete_text
    click element    id=ALF_DELETE_CONTENT_DIALOG_CONFIRMATION_label
    click element    xpath=//*[@id="HEADER_MY_FILES_text"]/a
    Page Should Not Contain Element    xpath=//*[text()='${velement_name}']
