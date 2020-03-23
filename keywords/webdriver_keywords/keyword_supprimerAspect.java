public void supprimerAspet(String NomModel,String NomAspect) throws Exception {

//la variable NModel contient le nom du modele.
//la variable NomAspect contient le nom de l'aspect.				  	

//Cliquer sur le menu Outils admin 
driver.findElement(By.id("HEADER_ADMIN_CONSOLE_text")).click();
		
//Cliquer sur Gestionnaire de modèles(à gauche surla page Outils admin)
 driver.findElement(By.linkText("Gestionnaire de modèles")).click();
 
//Cliquer sur le nom du modèle ciblé dans la liste (le modèle dont on veut supprimer  l’aspect) 		 
 driver.findElement(By.xpath("//span[text()='"+NomModel+"']")).click();
 
 // Chargement de la page	
 Thread.sleep(4000);
 
 //Positionner le curseur sur aspect-cible et cliquer sur Actions (en face de l’aspect)
 driver.findElement(By.xpath("//span[contains(text(),'"+NomAspect+"')]/following::span[contains(text(),'Actions')]")).click();	
 
// Chargement de la page
Thread.sleep(1000);
 
//Cliquer sur Supprimer pour supprimer l'aspect sélectionné	
 driver.findElement(By.xpath("//div[@class='dijitPopup Popup']//descendant::tr[@title='Supprimer']//following::img")).click();
	
 // Chargement de la page
 Thread.sleep(1000);
	
 //Cliquer sur le bouton Supprimer du message d’alerte pour confirmer la suppression de l'aspect. 
 driver.findElement(By.xpath("//div[@class='footer']//following::span[contains(text(),'Supprimer')]")).click();
	
 //Vérification de la suppression de l'aspect 
 try {
	 driver.findElement(By.xpath("//span[contains(text(),'"+NomAspect+"')]")); 
	 System.out.println("Aspect supprimer");
	 }
	 catch (Exception e) {
	 System.out.println("Aspect non supprimer");
