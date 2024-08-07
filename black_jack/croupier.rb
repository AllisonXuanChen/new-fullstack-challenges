require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  "Your score is #{player_score}, bank is #{bank_score}"
end

def end_game_message(player_score, bank_score)
  if player_score > 21
    "You are over 21... You lose!"
  elsif player_score == 21
    "Black Jack!"
  elsif player_score > bank_score
    "You beat the bank! YOu win!"
  elsif player_score < bank_score
    "You lose!"
  else
    "Push!"
  end
end
