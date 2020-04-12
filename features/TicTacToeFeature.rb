require "selenium-webdriver"
require_relative "../GUIMaps/Maps.rb"


Maps.TicTacToeMap.navigate
Maps.TicTacToeMap.input_Number.send_keys "10"
sleep(10)
