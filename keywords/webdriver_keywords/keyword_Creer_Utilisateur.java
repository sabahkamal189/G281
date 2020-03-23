	# Permet de créer un utilisateur
	# vPrenom contient le prénom de l utilisateur
	# vNom contient le prénom de l utilisateur
	# vCourriel contient le courriel de l utilisateur
	# vUsername contient le username de l utilisateur
	# vPassword contient le mot de passe de l utilisateur
	# Auteur: Frédéric Leroux
  	# Date de création: 23 mars 2020
  	
  	public class Creer_utilisateur() throws Exception {
  		private String vPrenom, vNom, vCourriel, vUsername, vPassword;

  		//Accès à l'outil d'administration
  	    driver.findElement(By.linkText("Outils admin")).click();
  	    //Accès à la section "Utilisateur'
  	    driver.findElement(By.linkText("Utilisateurs")).click();
  	    //Accès à la création d'un nouvel utilisateur
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[2]/div[1]/div/div/ul[3]/li[2]/span/a")).click();
  	    //Ajout du prénom depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[3]/input")).sendKeys("vPrenom");
  	    //Ajout du nom depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[5]/inpu")).sendKeys("vNom");
  	    //Ajout du courriel depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[7]/input")).sendKeys("vCourriel");
  	    //Ajout du Username depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[10]/input ")).sendKeys("vUsername");
  	    //Ajout du mot de passe depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[12]/input")).sendKeys("vPassword");
  	    //Ajout à nouveau du mot de passe depuis une variable
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[14]/input ")).sendKeys("vPassword");
  	    //Recherche du groupe ALFRESCO_ADMINISTRATORS
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[17]/span")).sendKeys("ALFRESCO_ADMINISTRATORS");
  	    //Cliquer sur le bouton "Rechercher"
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[16]/div/div[2]/div[1]/div[2]/span/span/button").click();
  	    //Cliquer sur le bouton "Ajotuer" un groupe
  	    driver.findElement(By.xpath("=/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[1]/div[16]/div/div[2]/div[2]/table/tbody[2]/tr/td[3]/div/span/span/span/button")).click();
  	    //CLiquer sur le bouton "Créer un utilisateur"
  	    driver.findElement(By.xpath("/html/body/div[7]/div[1]/div[2]/div[1]/div[1]/div/div/div/div/div[4]/form/div[2]/div[1]/span/span/button")).click();
  	  }
