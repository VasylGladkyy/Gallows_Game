class ResultConsolePrint
  def initialize(status_images)
    @status_images_array=status_images
  end

  def print_status(game)
    cls
    puts "Слово: "+ get_word_for_print(game.letters,game.good_letters)
    puts "Помилки #{game.errors}:#{game.bad_letters.join(", ")}"

    print_gallows(game.errors)# to do
    if(game.errors>=7)
      puts "Ви програли :("
      puts "А загаданим словом було:#{game.letters.join("")}"
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
      puts @status_images_array[0]
    when 1
      puts @status_images_array[1]
    when 2
      puts @status_images_array[2]
    when 3
      puts @status_images_array[3]
    when 4
      puts @status_images_array[4]
    when 5
      puts @status_images_array[5]
    when 6
      puts @status_images_array[6]
    when 7
      puts @status_images_array[7]
    end
  end
end