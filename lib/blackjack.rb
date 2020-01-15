def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  return rand(1..11)
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  decision = gets.chomp
end

def end_game(card_total)
  # code #end_game h
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_sum = 0 
  card_sum  += deal_card
  display_card_total(card_sum)
end

def hit?(current_card_number)
  # code hit? here
  prompt_user
  get_user_input
  if play == 'h'
    new_card = deal_card
    display_card_total
  elsif play != 'h' || play != 's'
    invalid_command
    prompt_user
    display_card_total()
  else
    display_card_total
  end
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome 
  initial_round
  
end
    
