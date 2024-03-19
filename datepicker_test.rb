require "selenium-webdriver"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://formy-project.herokuapp.com/datepicker"

date_field = driver.find_element(:id 'datepicker')
date_field.send_keys('04/20/2024')
date_field.send_keys :return
