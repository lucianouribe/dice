require 'pry'

@answer_list = [
  'Go for it',
  'Really?',
  'Are you serious?',
  'Yes!',
  'No!',
  'Maybe! It depends on your objectives',
  'What does your concience say?',
  'If your mother lets you, then you can'
]
@funny_list = [
  'No way those are good manners',
  'The DigiFortune is not impressed at all',
  'Are you trying to be sarcastic?',
  'Ha, Ha, Ha, How funny! Is that a real goodbye?',
]
@bye_array = [
  'Trying to leave the Digi Fortune in that harsh way has condemned your soul to infinite years of torture in hell',
  # "In fact, say goodbye to your soul. Now it's mine!",
  # "Don't beg, you're done!",
  # 'Stop it, you look ridiculus',
  # 'Grow up and accept your fate!',
  # 'bye #{@name}'
]
@user_list = []
@sum_of_all_arrays = []

@name = Dir.pwd.split('/Users')[1].split('/')[1]

puts "Hello #{@name} this is DigiFortune teller here"
puts "I know the answers to everything!!"

def start
  puts "\nJust ask whatever you want to know or if you are done with me, just type (q)uit or colaborate if you want to add answers or reset"
  print ">> "
  question = gets.strip
  if question == ""
    puts "Don't be shy, I don't bite!"
    puts "Do it again... Ask, ask! I'm almost answering myself!"
    start
  elsif
    question.downcase.include?('q')
    puts "Come on #{@name} Are you joking?"
    puts "If you want to leave me you will have to ask it kindly"
    puts "Tell me in good manner that you want to leave"
    print ">> "
    variable_with_no_use = gets
    @list = @funny_list
    roll_the_dice
    chao
  elsif question == 'cola'
    puts "Add an answer"
    answer = gets.strip
    @user_list << answer
    puts @user_list
    start
  elsif question == 'reset'
    @user_list.clear
    start
  else
    @sum_of_all_arrays << @answer_list.concat(@user_list)
    @list = @sum_of_all_arrays.flatten
    roll_the_dice
  end
end

def chao
  @bye_array.each {|chao_message| puts chao_message; sleep 2}
  exit
end

def roll_the_dice
  numbers = [0..9]
  puts @list.shuffle[rand(8)]
end

while go = true
  start
end
