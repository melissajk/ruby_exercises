class GuessingGame
  RESULT_OF_GUESS_MESSAGE = {
    :high => "Your number is too high.",
    :low => "Your number is too low",
    :match => "You guessed the winning number!"
  }
  
  WIN_OR_LOSE = {
    :high => :lose,
    :low => :lose,
    :match => :win
  }
  
  RESULT_OF_GAME_MESSAGE = {
    :win => "You win!",
    :lose => "You are out of guesses.  You lose."
  }
  
  def initialize(num1, num2)
    @range = num2 > num1 ? num1..num2 : num2..num1
    @winning_number = nil
  end

  def play
    reset
    game_result = play_game
    display_game_end_message(game_result)
  end
  
  private
  
  def reset
    @winning_number = rand(@range)
    @guesses = Math.log2(@range.size).to_i + 1
  end

  def show_number_of_guesses(guesses)
    if guesses == 1
      puts "You have one guess remaining."
    else
      puts "You have #{guesses} guesses remaining."
    end
  end
  
  def compare_number_and_guess(guess)
    return :match if guess == @winning_number
    return :low if guess < @winning_number
    :high
  end
  
  def player_makes_guess
    choice = nil
    loop do
      puts "Enter a number between #{@range.min} and #{@range.max}: "
      choice = gets.chomp.to_i
      break if @range.cover?(choice)
      puts "Invalid guess."
    end
    choice
  end
  
  def display_game_end_message(game_result)
    puts ""
    puts RESULT_OF_GAME_MESSAGE[game_result]
  end
  
  def play_game
    result = nil
    @guesses.downto(1) do |remaining_guesses|
      show_number_of_guesses(remaining_guesses)
      result = compare_number_and_guess(player_makes_guess)
      puts RESULT_OF_GUESS_MESSAGE[result]
      break if result == :match
    end
    WIN_OR_LOSE[result]
  end
end


game = GuessingGame.new(30, 90)
game.play

