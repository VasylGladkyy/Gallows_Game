#метод require дозволяє підключити файл який містить в собі певну логіку
require './game.rb'
require './result_console_print.rb'

printer=ResultConsolePrint.new
slovo = ARGV[0]
printer.cls
game = Game.new(slovo)

while game.status ==0 do
  printer.print_status game
  game.ask_next_letter
end

printer.print_status game