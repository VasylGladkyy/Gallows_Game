require './Methods.rb'
letters = get_letters #To do
cls #To do

errorsCounter=0
goodLettersArray=[]
badLettersArray=[]

while errorsCounter < 7 do
  print_status letters,goodLettersArray, badLettersArray,errorsCounter #To do
  print "\nВведіть наступну букву\n->"
  user_input=get_user_input #To do
  result=check_input user_input,letters,goodLettersArray,badLettersArray #To do
  if result==-1
    errorsCounter+=1
  elsif result==1
    break
  end
end