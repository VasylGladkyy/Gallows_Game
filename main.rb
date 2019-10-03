#метод require дозволяє підключити файл який містить в собі певну логіку

require_relative 'game.rb'
require_relative 'result_console_print.rb'
require_relative 'word_reader.rb'
require_relative 'image_reader.rb'

current_path=File.dirname(__FILE__ )
image_reader=ImageReader.new current_path+"/data/image/"
printer=ResultConsolePrint.new image_reader.getImagesArray
reader=WordReader.new current_path+"/data/words.txt"
slovo=reader.read_from_file
game = Game.new(slovo)

while game.status ==0 do
  printer.print_status game
  game.ask_next_letter
end

printer.print_status game