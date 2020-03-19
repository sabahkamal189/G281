supprimer_Site
	# Permet de supprimer un site
	# vSite contient l'identifiant du site
	[Arguments] $v{Site}
	# Accès au menu "site"
	Click Element    xpath=//div[@id='HEADER_SITES_MENU']/span[2]
	# Click sur le site depuis l'argument
	Click Element    xpath=(//a[contains(text(),$v{Site})])[2]
	# Accès à la roue d'entelé
	Click Element    id=HEADER_SITE_CONFIGURATION_DROPDOWN
	# Sélection du lien "Supprimer le site"
	Click Element    id=HEADER_DELETE_SITE_text
	# CLiquer sur "OK" du popup
	Click Element    id=ALF_SITE_SERVICE_DIALOG_CONFIRMATION_label
