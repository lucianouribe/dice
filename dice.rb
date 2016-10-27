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
  "In fact, say goodbye to your soul. Now it's mine!",
  "Don't beg, you're done!",
  'Stop it, you look ridiculus',
  'Grow up and accept your fate!',
  'byeeee'
]
@user_list = []
@sum_of_all_arrays = []

@name = Dir.pwd.split('/Users')[1].split('/')[1]

puts "Hello #{@name} this is DigiFortune teller here"
puts "I know the answers to everything!!"

def start
  puts "\nJust ask whatever you want to know or type (menu) for more options"
  print ">> "
  question = gets.strip
  if question == ''
    puts "Don't be shy, I don't bite!"
    puts "Do it again... Ask, ask! I'm almost answering myself!"
    start
  elsif question == 'menu'
    menu
  else
    concatenating
  end
end

def menu
  puts "|q| quit |c| colaborate |r| reset |p| print |b| back"
  option = gets.strip.downcase
  case option
  when 'q'
    quit
  when 'c'
    help_me
  when 'r'
    reset
  when 'b'
    start
  when 'p'
    print_options
  else
    puts "Not a valid choice"
    menu
  end
end

def quit
  puts "Come on #{@name} Are you joking?"
  puts "If you want to leave me you will have to ask it kindly"
  puts "Tell me in good manner that you want to leave"
  print ">> "
  variable_with_no_use = gets
  @list = @funny_list
  roll_the_dice
  chao
end

def help_me
  puts "Add an answer"
  @sum_of_all_arrays << @answer_list.concat(@user_list)
  answer = gets.strip
  if @sum_of_all_arrays.flatten.include?(answer) == true
    puts "It's already on the list"
  else
    @user_list << answer
    puts @user_list
  end
  menu
end

def print_options
  @answer_list.flatten
  @user_list.flatten
  @sum_of_all_arrays << @answer_list.concat(@user_list)
  File.open("answers.txt", "w") do |f|
  f.puts(@sum_of_all_arrays)
  end
  puts @sum_of_all_arrays
  menu
end

def reset
  @user_list.clear
  start
end

def concatenating
  @sum_of_all_arrays << @answer_list.concat(@user_list)
  @list = @sum_of_all_arrays.flatten
  roll_the_dice
end

def chao
  @bye_array.each {|chao_message| puts chao_message; sleep 2}
  exit
end

def roll_the_dice
  numbers = [0..9]
  puts @list.shuffle[rand(9)]
end

while go = true
  start
end
