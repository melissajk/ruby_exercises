class GuessingGame
  attr_accessor :guesses, :guess
  attr_reader :winning_number
  def initialize
    @winning_number = rand(100)
    @guesses = 7
    @guess = nil
  end
  
  def show_number_of_guesses
    puts "You have #{guesses} guesses remaining."
  end
  
  def win?
    winning_number == guess
  end
  
  def compare_number_and_guess
    if guess > winning_number
      puts "Your guess is too high"
    elsif winning_number > guess
      puts "Your guess is too low"
    end
  end
  
  def show_results
    if win?
      puts "You win!"
    else
      puts "You are out of guesses. You lose."
    end
  end

  def player_makes_guess
    choice = nil
    loop do
      puts "Enter a number between 1 and 100: "
      choice = gets.chomp.to_i
      break if (1..100).include?(choice)
      puts "Invalid guess."
    end
    self.guess = choice
  end
  
  def play
    while guesses > 0
      show_number_of_guesses
      player_makes_guess
      compare_number_and_guess
      break if win?
      self.guesses -= 1
    end
    show_results
  end
end


game = GuessingGame.new
game.play

