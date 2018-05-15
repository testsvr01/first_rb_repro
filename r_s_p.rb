WINS = { :computer => 0, :user => 0, :draws => 0 }

HANDLER = {
  :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win},
  :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose},
  :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
}

def computer
  choice = rand(1..3)
  choice == 1 ? :rock : choice == 2 ? :paper : :scissors
end

def compare(outcome)
  if outcome == :win
    puts "You win!"
    WINS[:user] += 1
  elsif outcome == :lose
    puts "You lost!"
    WINS[:computer] += 1
  else
    WINS[:draws] += 1
    puts "Tie game!"
  end
end

def play
  puts '
  |---------------------------------|
  |       ROCK PAPER SCISSORS!      |
  |---------------------------------|
  '
  puts "Enter choice: Rock (1), Paper (2), or Scissors (3)"

  comp_choice = computer
  case gets.chomp.to_s.downcase
    when 'rock', '1'
      puts "You chose     : Rock"
      puts "Computer chose: #{comp_choice.capitalize}"
      compare(HANDLER[:rock][comp_choice])
    when 'paper', '2'
      puts "You chose     : Paper"
      puts "Computer chose: #{comp_choice.capitalize}"
      compare(HANDLER[:paper][comp_choice])
    when 'scissors', '3'
      puts "You chose     : Scissors"
      puts "Computer chose: #{comp_choice.capitalize}"
      compare(HANDLER[:scissors][comp_choice])
    else
      puts "Invalid choice!"
  end
  
  puts "Your total score: #{WINS[:user]}  |  Computer total score: #{WINS[:computer]}  |  Total draws: #{WINS[:draws]}"
  cont = WINS[:user] != 5  && WINS[:computer] != 5
  
  if cont
    play
  else 
    puts "Thanks for playing"
    
     end
end

play