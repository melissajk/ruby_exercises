class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end
  
  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected
  attr_reader :amount
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

# Bill has more money than Penny

puts bills_wallet.amount 

# protected method `amount' called for #<Wallet:0x000000016c8a30 @amount=500> (NoMethodError)

# Further Exploration

# Protected methods would be desireable in any sort of application that would
# compare numbers and return an approval or rejection.  Like when you run a 
# credit card to see if the balance is enough to accomodate the purchase.  The
# cashier has no access to the data on the card, but the methods related to the
# transaction can return either "approved" or "denied"

