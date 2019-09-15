class ResultConsolePrint
  def initialize

  end

  def print_status(game)
    puts "Слово: "+ get_word_for_print(game.letters,game.good_letters)
    puts "Помилки #{game.errors}:#{game.bad_letters.join(", ")}"

    if(game.errors>=7)
      puts "Ви програли :("
    else
      if game.letters.uniq.size==game.good_letters.uniq.size
        puts "Ви виграли :)"
      else
        puts "У вас залишилось спроб: "+(7-game.errors).to_s
      end
    end
  end

  def get_word_for_print(letters,goodLettersArray)
    result=""
    for i in letters do
      if goodLettersArray.include?(i)
        result+="#{i} "
      else
        result+="_ "
      end
    end
    return result
  end

  def cls
    system("clear")||system("cls")
  end


end

