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
require 'pry'

name = Dir.pwd.split('/Users')[1].split('/')[1]

puts "Hello #{name} this is DigiFortune teller here"
puts "I know the answers to everything!!"
def start
  puts "\nJust ask whatever you want to know or If you are done with me just type (q)uit"
  print ">> "
  question = gets.strip
# binding.pry
  if question == ""
    puts "Don't be shy, I don't bite!"
    puts "Do it again... Ask, ask! I'm almost answering myself!"
    start
  elsif
    question.downcase.include?('q')
    # puts "Leaving the DigiFortune in that harsh way will comdem your soul to infinite years of hell torture"
    # puts "In fact, say goodbye to your soul, now it's mine"
    chao
  else
    roll_the_dice
  end
end
def chao
  ['Leaving the Digi Fortune in that harsh way will condemn your soul to infinite years of torture in hell',
    "In fact, say goodbye to your soul. Now it's mine!",
    "Don't beg, you're done!",
    'Stop it, you look ridiculus',
    'Grow up and accept your fate!',
    'bye'].each {|chao_message| puts chao_message; sleep 2}
    exit
end
def roll_the_dice
  numbers = [0..9]
  puts @answer_list.shuffle[rand(8)]
end

while go = true
  start
end
