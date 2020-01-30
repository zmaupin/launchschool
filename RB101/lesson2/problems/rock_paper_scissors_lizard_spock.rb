#!/usr/bin/env ruby

# rock paper scissors lizard spock
require 'byebug'

VALID_CHOICES = %w(rock paper scissors lizard spock).freeze

WINNERS = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'spock' => ['scissors', 'rock'],
  'lizard' => ['spock', 'paper']
}.freeze

def prompt(message)
  puts ">> #{message}"
end

def player_won?(player, computer)
  WINNERS[player].include?(computer)
end

def computer_won?(player, computer)
  WINNERS[computer].include?(player)
end

def results(player, computer)
  if player_won?(player, computer)
    prompt 'You won!'
    winner = 'player'
  elsif computer_won?(player, computer)
    prompt 'You lost!'
    winner = 'computer'
  else
    prompt 'It is a tie!'
    winner = nil
  end

  winner
end

def display_score(scores)
  scores.each do |player, score|
    prompt "#{player} has won #{score} times!"
  end
end

players = {
  'player' => 0,
  'computer' => 0
}

loop do
  choice = ''
  loop do
    prompt "Choose one: #{VALID_CHOICES.join(', ')}"
    choice = gets.chomp.downcase
    choice = case
             when choice.start_with?('sp')
               'spock'
             when choice.start_with?('r')
               'rock'
             when choice.start_with?('sc')
               'scissors'
             when choice.start_with?('l')
               'lizard'
             when choice.start_with?('p')
               'paper'
             else
               prompt 'Something is wrong with the choice you enterred.'
             end

    break if VALID_CHOICES.include? choice

    prompt('That is not a valid choice.')
  end

  computer_choice = VALID_CHOICES.sample

  prompt "You chose: #{choice}; Computer chose: #{computer_choice}."

  winner = results(choice, computer_choice)
  if winner
    players[winner] += 1

    display_score(players)

    if players[winner] >= 5
      prompt "#{winner.capitalize} won the match!"
      break
    end
  end
end

prompt 'Thank you for playing. Bye!'
