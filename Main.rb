require './Methods.rb'
letters = get_letters
cls

errorsCounter=0
goodLettersArray=[]
badLettersArray=[]

while errorsCounter < 7 do
  print_status letters,goodLettersArray, badLettersArray,errorsCounter
  print "\nВведіть наступну букву\n->"
  user_input=get_user_input
   result=check_input user_input,letters,goodLettersArray,badLettersArray
  if result==-1
     errorsCounter+=1
   elsif result==1
     break
   end
end

print_status letters,goodLettersArray, badLettersArray,errorsCounter