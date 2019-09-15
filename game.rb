class Game
  def initialize(slovo)
    @letters=get_letters(slovo)
    @errors=0
    @good_letters=[]
    @bad_letters=[]
    @status=0
  end
#В останньому рядку Ruby дозволяє не писати метод return
  def letters
    @letters;
  end

  def errors
    @errors;
  end

  def good_letters
    @good_letters;
  end

  def bad_letters
    @bad_letters
  end

  def status
    @status;
  end


  def get_letters(slovo)
    if(slovo==nil || slovo == "")
      slovo=""
      while slovo == ""
        print "Введіть слово!\n->"
        slovo=STDIN.gets.chomp
      end
      return slovo.split""
    end
    return slovo.split ""
  end

  def ask_next_letter
    print "\nВведіть наступну букву\n->"
    letter=""
    while letter==""
      letter=STDIN.gets.encode("UTF-8").chomp
    end
    next_step letter # to do
  end

  def next_step(user_input)
    if @status==-1 || @status==1
      return
    end
    if@good_letters.include?(user_input)||@bad_letters.include?(user_input)
      puts "Ви вже вводили дану букву!"
      return
    end
    if @letters.include?(user_input) ||
        (user_input == 'е' && @letters.include?('ё')) ||
        (user_input == 'ё' && @letters.include?('е')) ||
        (user_input == 'и' && @letters.include?('й')) ||
        (user_input == 'й' && @letters.include?('и'))
      @good_letters<<user_input
      if(@good_letters.uniq.size==@letters.uniq.size)
        @status= 1
      end
    else
      @bad_letters<<user_input
      @errors+=1
      if @errors>=7
        @status=-1
      end
    end
  end
end