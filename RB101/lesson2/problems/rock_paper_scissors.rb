#!/usr/bin/env ruby

# rock paper scissors

VALID_CHOICES = %w(rock paper scissors).freeze

def prompt(message)
  puts ">> #{message}"
end

def player_won?(player, computer)
  (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
end

def computer_won?(player, computer)
  (player == 'rock' && computer == 'paper') ||
    (player == 'paper' && computer == 'scissors') ||
    (player == 'scissors' && computer == 'rock')
end

def display_results(player, computer)
  if player_won?(player, computer)
    prompt 'You won!'
  elsif computer_won?(player, computer)
    prompt 'You lost!'
  else
    prompt 'It is a tie!'
  end
end

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp

    break if VALID_CHOICES.include? choice

    prompt('That is not a valid choice.')
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}."

  display_results(choice, computer_choice)

  prompt 'Would you like to play again? (y/n)'
  answer = gets.chomp.downcase

  break unless answer == 'y'
end

prompt 'Thank you for playing. Bye!'
