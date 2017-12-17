items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(items)
  puts "Let's start gathering food."
  yield(items)
  puts "We've finished gathering!"
end

gather(items) do |*food, grain |
  puts "#{food.join(', ')}"
  puts "#{grain}"
end

gather(items) do | fruit, *vegetables, grain |
  puts "#{fruit}"
  puts "#{vegetables.join(', ')}"
  puts "#{grain}"
end

gather(items) do | fruit, *others |
  puts "#{fruit}"
  puts "#{others.join(', ')}"
end

gather(items) do | apples, corn, cabbage, wheat |
  puts "#{apples}, #{corn}, #{cabbage}, and #{wheat}"
end