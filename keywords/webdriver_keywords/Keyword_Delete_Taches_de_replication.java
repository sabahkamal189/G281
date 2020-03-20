	public void delete_taches_de_replication(String vtache_name) {
		// click outils admin
		driver.findElement(By.id("HEADER_ADMIN_CONSOLE_text")).click();
		// click gestionnaire modele
		driver.findElement(By.linkText("Tâches de réplication")).click();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		// click tache
		driver.findElement(By.xpath("//div[@id='page_x002e_ctool_x002e_admin-console_x0023_default-jobsList']//*[text()='"+vtache_name+"']")).click();
		System.out.println("clicked tache!");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		// click supprimer
		driver.findElement(By.xpath("//div[@id='alf-content']//*[text() = 'Supprimer']")).click();
		System.out.println("click supprimer!");
		//confirm Supprimer
		driver.findElement(By.xpath("//div[@id='prompt']//*[text() = 'Supprimer']")).click();
	//check point
		try {
			driver.findElement(By.xpath("//*[text() = '" + vtache_name + "']"));
			System.out.println("tache deleted!");
		}

		catch (Exception e) {
			System.out.println("tache not deleted!");
		}
	}
