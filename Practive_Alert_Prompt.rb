require 'selenium-webdriver'
driver=Selenium::WebDriver.for :chrome

driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html'
driver.find_element(xpath: "//button[contains(text(),'Click for Prompt Box')]").click
alert=driver.switch_to.alert
alert.send_keys 'selenium'
sleep 4
alert.accept