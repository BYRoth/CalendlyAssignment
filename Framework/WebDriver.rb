#Wrapper class for the WebDriver
#Lets me add some additional functionality as well as set timeouts, etc.
require "selenium-webdriver"
class WebDriver
@@driver = Selenium::WebDriver.for :chrome
Timeout = 30

  def self.driver
    return @@driver
  end

  def self.findElementById(id)
    attempts = 0
    while attempts<Timeout do
      begin
        return @@driver.find_element(:id => id)

      rescue NoSuchElementError
        sleep(1)
      end
    end
    raise "Element not found"
  end

  def self.switchToIFrame(id)
    @@driver.switch_to.default_content
    @@driver.switch_to.frame @@driver.find_element(:id => id)
  end

  def self.navigate(url)
    @@driver.navigate.to url
  end
end
