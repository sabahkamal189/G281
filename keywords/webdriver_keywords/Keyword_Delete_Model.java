public void delete_model(String vmodel_name) {
		// click outils admin
		driver.findElement(By.id("HEADER_ADMIN_CONSOLE_text")).click();
		// click gestionnaire modele
		driver.findElement(By.linkText("Gestionnaire de modèles")).click();
		// click actions
		driver.findElement(By.xpath("//*[text() = '" + vmodel_name + "']//ancestor::tr//td[4]//*[text() = 'Actions']"))
				.click();
		// click delete
		driver.findElement(By.xpath("//div[@class='dijitPopup Popup']//*[text() = 'Supprimer']")).click();
		// click Supprimer
		driver.findElement(By.xpath("//div[@class='footer']//*[text() = 'Supprimer']")).click();
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
		System.out.println("Actions clicked");
		// delete confirm
		// check point
		try {
			driver.findElement(By.xpath("//*[text() = '" + vmodel_name + "']"));
			System.out.println("Model deleted!");
		}

		catch (Exception e) {
			System.out.println("Model not deleted!");
		}
	}