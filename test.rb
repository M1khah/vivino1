require "selenium-webdriver"
require 'webdrivers'







keyword = "white"

driver = Selenium::WebDriver.for :chrome
driver.navigate.to "https://www.vivino.com"

search_box = driver.find_element(name: 'q')
search_box.send_keys keyword
search_box.submit

sleep (9)



driver.quit




#
# begin
#   code
# rescue ExceptionName
#   code
# rescue
#   code
# ensure
#   code
# end



  #   def caps
  #     caps = {
  #       :udid = ,
  #       :platform => "MAC",
  #       :browserName => "Chrome",
  #       :version => "latest"
  #     }
  # end

  # {
  #     "platformName": "iOS",
  #     "appium:options": {
  #         "automationName": "XCUITest",
  #         "platformVersion": "16.0",
  #         "app": "/path/to/your.app",
  #         "deviceName": "iPhone 12",
  #         "noReset": true
  #     }
  #

  # xcrun simctl list
  # adb devices
