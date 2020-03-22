	# Permet de supprimer un utilisateur
	# vUtilisateur contient l'identifiant de l'utilisateur
	# Auteur: Frédéric Leroux
    # Date de création: 22 mars 2020

Keyword_Supprimer_Utilisateur
    [Arguments] ${vUtilisateur}
	  #Accès à l'outil d'administration
    Click Element    link=Outils admin
    #Accès à la section "Utilisateur'
    Click Element    link=Utilisateurs
	  #Recherche de l'utilisateur à partir de l'arguments
    Input Text     id=page_x002e_ctool_x002e_admin-console_x0023_default-search-text    ${vUtilisateur}
	  #Click sur le bouton "Rechercher"
    Click Element    id=page_x002e_ctool_x002e_admin-console_x0023_default-search-button-button
	  #Accàs au détail de l'utilisateur
    Click Element    id=yui-gen51
	  #Click sur le bouton "Supprimer un utilisateur"
    Click Element    id=page_x002e_ctool_x002e_admin-console_x0023_default-deleteuser-button-button
	  #Click sur "Supprimer" sur le popup
    Click Element    id=yui-gen1-button
