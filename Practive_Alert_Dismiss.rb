require 'selenium-webdriver'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
driver.find_element(xpath: "//button[@class='btn btn-default btn-lg'][contains(text(),'Click me!')]").click
sleep 2
driver.switch_to.alert.dismiss