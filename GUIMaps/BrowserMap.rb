class BrowserMap
  @driver
  def initialize(driver)
    @driver = driver
  end

  def navigate(string)
    @driver.navigate(string)
  end
end
