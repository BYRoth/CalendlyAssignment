#GUI Map for the tic tac toe page
#I like to return the elements themselves when accessing to move
#more of the logic into the definiton files to keep the maps neat
#and readable also helps stop stale element exceptions
class TicTacToeMap
  @driver
  def initialize(driver)
    @driver = driver
    @driver.switchToIFrame('result')
  end

  def input_Number
    return @driver.findElementById('number')
  end

  def button_Play
    return @driver.findElementById('start')
  end

  def table_Board
    return @driver.findElementById("table")
  end

  def tr_BoardRows
    return table_Board.find_elements(:tag_name => "tr")
  end

  def td_BoardRowCells(i)
    return tr_BoardRows[i].find_elements(:tag_name => "td")
  end

  def div_GameOverMessage
    return @driver.findElementById("endgame")
  end
end
