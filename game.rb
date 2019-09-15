class Game
  def initialize(slovo)
    @letters=get_letters(slovo) #to do
    @errors=0
    @good_letters=[]
    @bad_letters=[]
    @status=0
  end

  def get_letters(slovo)
    if(slovo==nil || slovo == "")
      abort "Ви ве ввели слово для гри!!!"
    end
    return slovo.split("")
  end

  def ask_next_letter

  end
end