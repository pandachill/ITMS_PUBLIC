require 'selenium-webdriver'
driver=Selenium::WebDriver.for :chrome

driver.get 'http://www.practiceselenium.com/check-out.html'
options=driver.find_element(id: 'card_type')
select_option=Selenium::WebDriver::Support::Select.new(options)
select_option.select_by(:text,'Visa') #phải đúng format này
#select_option.select_by(:index,1)
#select_option.select_by(:value,'1')
sleep 2
driver.quit