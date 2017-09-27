class GuessingGame
  attr_accessor :guesses, :guess
  attr_reader :winning_number
  
  def initialize(low, high)
    @range = low..high
    @winning_number = rand(@range)
    @guesses = Math.log2(@range.size).to_i + 1
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
      puts "Enter a number between #{@range.first} and #{@range.last}: "
      choice = gets.chomp.to_i
      break if @range.cover?(choice)
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


game = GuessingGame.new(30, 90)
game.play

