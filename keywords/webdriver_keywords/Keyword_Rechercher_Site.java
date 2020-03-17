package AlfrescoTestSuite;

public static void RechercherSite(WebDriver driver, String Site) throws Exception {

	// vSite contient le nom de la site recherché
	// Cliquer sur le menu Sites pour ouvrir la liste déroulante d'options disponibles 
	driver.findElement(By.id("HEADER_SITES_MENU_text")).click();
	// Cliquer sur le link Recherche de sites
	driver.findElement(By.linkText("Recherche de sites")).click();
	// Attendre que la page est chargée
	driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
	// Saisir le nom de site recherché
	driver.findElement(By.id("template_x002e_site-finder_x002e_site-finder_x0023_default-term")).sendKeys(vSite);
	// Cliquer sur le bouton de recherche
	driver.findElement(By.id("template_x002e_site-finder_x002e_site-finder_x0023_default-button-button")).click();
	// Attendre que la page est chargée
	Thread.sleep(1000);
    // Verifier que le résultat de recherche est apparu et que la site recherché existe
	boolean vVerification = driver.findElements(By.linkText(vSite)).size()!=0;
	// Si site recherch� existe
	if  (vVerification)
			  {
    	 // Cliquer sur le site recherché
         driver.findElement(By.linkText(vSite)).click();
         driver.manage().timeouts().implicitlyWait(30, TimeUnit.SECONDS);
 	}
	// Si non, afficher le message d'erreur
         else {
            System.out.println("Site n'existe pas!");
        }
 	   
   	}
