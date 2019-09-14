def get_letters
  if ARGV[0]==nil || ARGV[0]==""
    print "Загадайте слово\n->"
    return STDIN.gets.encode("UTF-8").chomp.split ""
  else
    return ARGV[0].encode("UTF-8").split ""
  end
end

def cls
  system("clear")||system("cls")
end




