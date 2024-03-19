require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/form"

driver.find_element(:id 'first-name').send_keys('Tish')
driver.find_element(:id 'last-name').send_keys('Fish')
driver.find_element(:id 'job-title').send_keys('Master')
driver.find_element(:id 'radio-button-2').click
driver.find_element(:id 'checkbox-2').click
driver.find_element(css: 'option[value="2"]').click
driver.find_element(:id 'datepicker').send_keys('04/22/2024')
driver.find_element(:id 'datepicker').send_keys :return
driver.find_element(css: 'btn.btn-lg.btn-primary').click
driver.quit