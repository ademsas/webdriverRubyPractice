require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/scroll"

name = driver.find_element(:id 'name')
driver.action.move_to(name).send_keys('Tish Test')

date = driver.find_element(:id, 'date')
date.send_keys('03/18/2024')