public static void SupprimerProprieteTypePersonnalise(WebDriver driver, String Modele, String Type,
		String Propriete) throws Exception {
	
	/*  vModele contient le nom de modèle 
	 *  vType contient le type personnalisé 
	 *  vPropriete contient la propriété à supprimer 
	 */
	// Cliquer sur menu Outils dmin en haut de la page
	driver.findElement(By.cssSelector("#HEADER_ADMIN_CONSOLE_text > a")).click();
	// Attendre que la page est chargée
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	// Cliquer sur un rubrique de Gestionnaire de modèles
	driver.findElement(By.linkText("Gestionnaire de modèles")).click();
	// Attendre que la page est chargée
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	driver.findElement(By.xpath("//span[@class='value' and text()=\"" + vModele + "\"]")).click();
	// Attendre que la page est chargée
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	// Cliquer sur Type personnalisé de Modele
	driver.findElement(By.xpath("//span[@class='value' and text()=\"" + vModele + ":" + vType + "\"]")).click();
	// Cliquer sur la liste déroulante d'actions disponibles 
	driver.findElement(By.xpath(
			"/html/body/div[6]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[2]/div[2]/div[1]/div/div/div/div[3]/div/div/div[7]/div[3]/div/table/tbody/tr/td[7]/div/div/div/span[2]"))
			.click();
	// Cliquer sur le bouton Supprimer
	driver.findElement(By.xpath("/html/body/div[32]/div/div/div[2]/table/tbody/tr[2]/td[1]/img")).click();
	// Cliquer  sur Supprimer dans un message de confirmation
	driver.findElement(By.xpath(
			"//div[@aria-labelledby='CMM_DELETE_PROPERTY_DIALOG_title']/child::div[2]/div[@class='footer']//span[@class='dijitReset dijitInline dijitButtonText']"))
			.click();
	// Attendre que la page est chargée
	Thread.sleep(2000);
	// S'assurer que la proprieté a été supprimée
	try {
		assertEquals("Aucune propriété trouvée. Cliquez sur Créer une propriété pour démarrer.",
				driver.findElement(
						By.xpath("//div[@class='alfresco-lists-views-AlfListView bordered']/child::div[1]"))
						.getText());
	// Afficher l'exception s'il existe
	} catch (Error e) {
		verificationErrors.append(e.toString());

	}
}
