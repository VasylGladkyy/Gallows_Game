# метод split дільть рядок на масив символів
def get_letters
  if ARGV[0]==nil || ARGV[0]==""
    print "Загадайте слово\n->"
    return STDIN.gets.encode("UTF-8").chomp.split ""
  else
    return ARGV[0].encode("UTF-8").split ""
  end
end
#метод System дозволяє використовувати системні команди ОС
def cls
  system("clear")||system("cls")
end

def get_user_input
  letter=""
  while letter==""
    letter=STDIN.gets.encode("UTF-8").chomp
  end
  return letter;
end

#unig повертає масив з унікальних букв
# include?(значення) перевіряє чи включає даний масив в себе дане значення
def check_input(user_input,letters,goodLettersArray,badLettersArray)
  if goodLettersArray.include?(user_input)||badLettersArray.include?(user_input)
    puts "Ви вже вводили дану букву!"
    return 0
  end
  if letters.include? user_input
    goodLettersArray<<user_input
  if(goodLettersArray.uniq.size==letters.uniq.size)
    return 1
  else
    return 0
  end
  else
    badLettersArray<<user_input
    return -1
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

def print_status(letters,goodLettersArray, badLettersArray,errorsCounter)
  puts "Слово: "+ get_word_for_print(letters,goodLettersArray)
  puts "Помилки (#{errorsCounter}:#{badLettersArray.join(", ")})"

  if(errorsCounter>=7)
    puts "Ви програли :("
  else
    if letters.uniq.size==goodLettersArray.uniq.size
      puts "Ви виграли :)"
    else
      puts "У вас залишилось спроб: "+(7-errorsCounter).to_s
    end
  end
end