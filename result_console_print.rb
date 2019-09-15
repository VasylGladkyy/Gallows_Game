class ResultConsolePrint

  def print_status(game)
    cls
    puts "Слово: "+ get_word_for_print(game.letters,game.good_letters)
    puts "Помилки #{game.errors}:#{game.bad_letters.join(", ")}"

    print_gallows(game.errors)# to do
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

  def print_gallows(errors)
    case errors
    when 0
      puts "
          _______
          |/
          |
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 1
      puts "
          _______
          |/
          |     ( )
          |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 2
      puts "
          _______
          |/
          |     ( )
          |      |
          |
          |
          |
          |
          |
        __|________
        |         |
        "
    when 3
      puts "
          _______
          |/
          |     ( )
          |      |_
          |        \\
          |
          |
          |
          |
        __|________
        |         |
        "
    when 4
      puts "
          _______
          |/
          |     ( )
          |     _|_
          |    /   \\
          |
          |
          |
          |
        __|________
        |         |
        "
    when 5
      puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |
          |
          |
        __|________
        |         |
        "

    when 6
      puts "
          _______
          |/
          |     ( )
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
    when 7
      puts "
          _______
          |/     |
          |     (_)
          |     _|_
          |    / | \\
          |      |
          |     / \\
          |    /   \\
          |
        __|________
        |         |
        "
    end
  end

end