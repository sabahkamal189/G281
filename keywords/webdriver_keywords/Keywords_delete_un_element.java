public void delete_un_element(String velement_name) {
		// serche element by name
		driver.findElement(By.xpath("//*[@id=\"HEADER_SEARCHBOX_FORM_FIELD\"]")).sendKeys(velement_name);
		// enter
		driver.findElement(By.xpath("//*[@id=\"HEADER_SEARCHBOX_FORM_FIELD\"]")).sendKeys(Keys.ENTER);
		// select first element
		driver.findElement(By.xpath("//*[@id=\"FCTSRCH_SEARCH_RESULT_SELECTOR\"]")).click();
		// click "elements selectionnes..."
		driver.findElement(By.xpath("//*[text()='Eléments sélectionnés...']")).click();
		// click delete
		driver.findElement(By.id("onActionDelete_text")).click();
		// confirm delete
		driver.findElement(By.id("ALF_DELETE_CONTENT_DIALOG_CONFIRMATION_label")).click();
		// check point===> to "mes fichiers"
		driver.findElement(By.xpath("//*[@id=\"HEADER_MY_FILES_text\"]/a")).click();
		try {
			driver.findElement(By.xpath("//*[text() = '" + velement_name + "']"));
			System.out.println("element not deleted!");
		}

		catch (Exception e) {
			System.out.println("element deleted!");
		}
	}
