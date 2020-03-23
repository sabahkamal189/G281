/* Méthode permettant de supprimer un site
 * vSite nom du site
 *  vVerification verification du site
 *  Auteur: Frédéric Leroux
 *  Date de création: 19 mars 2020
 *  
 */
public static void SupprimerSite(WebDriver driver, String vSite) throws Exception {
	// vSite contient le nom de la site recherché
	private String vSite;
	// Cliquer sur le menu Sites pour ouvrir la liste déroulante d'options disponibles 
	driver.findElement(By.id("HEADER_SITES_MENU_text")).click();
	// Verrification si le site est dans la liste
	boolean vVerification = driver.findElements(By.linkText(vSite)).size()!=0;
	// Si site est dans la liste récent
		if  (vVerification)
				  {
			// Cliquer sur le lien avec le nom du site
		    driver.findElement(By.xpath("vSite")).click();
			// Attendre que la page est chargée
			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	 	}
		// Si non, effectuer une recherche du site
	         else {
	        	 // Appel de la méthode
	        	 RechercherSite s = new RechercherSite();
	        	 RechercherSite.s(driver, vSite);
	        	 // CLiquer sur le site
	        	 driver.findElement(By.LinkText("vSite")).click();
	 			// Attendre que la page est chargée
	 			driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	        }
	// Attendre que la page est chargée
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	// CLiquer sur la rooue dentelé
    driver.findElement(By.id("HEADER_SITE_CONFIGURATION_DROPDOWN")).click();
    // CLiquer sur le lien "Supprimer site"
    driver.findElement(By.id("HEADER_DELETE_SITE_text")).click();
    // Confirmer la suppression
    driver.findElement(By.id("ALF_SITE_SERVICE_DIALOG_CONFIRMATION_label")).click();
  }
