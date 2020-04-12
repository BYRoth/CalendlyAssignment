require_relative "../../GUIMaps/Maps.rb"

When ("I enter {int} into the number field") do |number|
  Maps.TicTacToeMap.input_Number.send_keys number
end

When ("I click the Play button") do
  Maps.TicTacToeMap.button_Play.click
end

When ("I wait for some time") do
  sleep(5)
end

When ("I click the space on row: {int} and column: {int}") do |row, column|
  Maps.TicTacToeMap.td_BoardRowCells(row)[column].click
end

Then ("I see a Tic Tac Toe board of height and width {int}") do |number|
  expect(Maps.TicTacToeMap.tr_BoardRows.count()).to eq(number)
  for i in 0..(number-1)
    expect(Maps.TicTacToeMap.td_BoardRowCells(i).count()).to eq(number)
  end
end

Then ("I see that player {string} is declared the winner") do |player|
  expect(Maps.TicTacToeMap.div_GameOverMessage.text()).to eq("Congratulations player #{player}! You've won. Refresh to play again!")
end
