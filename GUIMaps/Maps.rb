#Main application map
require_relative "TicTacToeMap"
require_relative "BrowserMap"
require_relative "../Framework/WebDriver.rb"

class Maps
  def initialize()
  end

  def self.TicTacToeMap()
    return TicTacToeMap.new(WebDriver)
  end

  def self.BrowserMap()
    return BrowserMap.new(WebDriver)
  end
end
