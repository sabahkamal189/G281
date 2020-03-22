	# Permet de créer un utilisateur
	# vPrenom contient le prénom de l'utilisateur
	# vNom contient le prénom de l'utilisateur
	# vCourriel contient le courriel de l'utilisateur
	# vUsername contient le username de l'utilisateur
	# vPassword contient le mot de passe de l'utilisateur
	# Auteur: Frédéric Leroux
  # Date de création: 19 mars 2020

Keyword_Creer_Utilisateur
[Arguments]    ${vPrenom}    ${vNom}    ${vCourriel}    ${vUsername}    ${vPassword}
    #Accès à l'outil d'administration
    Click Element    link=Outils admin
    #Accès à la section "Utilisateur'
    Click Element    link=Utilisateurs
    #Accès à la création d'un nouvel utilisateur
    Click Element    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[2]/div[1]/div/div/ul[3]/li[2]/span/a
    #Ajout du prénom depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[3]/input    ${vPrenom}
    #Ajout du nom depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[5]/input    ${vNom}
    #Ajout du courriel depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[7]/input    ${vCourriel}
    #Ajout du Username depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[10]/input    ${vUsername}
    #Ajout du mot de3 passe depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[12]/input    ${vPassword}
    #Ajout à nouveau du mot de passe depuis une variable
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[14]/input    ${vPassword}
	  #Recherche du groupe ALFRESCO_ADMINISTRATORS
    Input Text    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[16]/div/div[2]/div[1]/div[1]/input   ALFRESCO_ADMINISTRATORS
	  #Cliquer sur le bouton "Rechercher"
    Click Element    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[16]/div/div[2]/div[1]/div[2]/span/span/button
	  #Cliquer sur le bouton "Ajotuer" un groupe
    CLick Element    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[16]/div/div[2]/div[2]/table/tbody[2]/tr/td[3]/div/span/span/span/button
    #CLiquer sur le bouton "Créer un utilisateur"
	  Click Element    xpath=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[2]/div[1]/span/span/button
