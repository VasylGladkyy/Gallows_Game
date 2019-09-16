#метод require дозволяє підключити файл який містить в собі певну логіку
current_path=File.dirname(__FILE__ )
require current_path+'/game.rb'
require current_path+'/result_console_print.rb'
require current_path+'/word_reader.rb'
require current_path+'/image_reader.rb'

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