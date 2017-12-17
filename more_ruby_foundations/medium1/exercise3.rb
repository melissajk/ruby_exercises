items = ['apples', 'corn', 'cabbage', 'wheat']

def gather(array)
  puts "Let's start gathering food."
  yield(array)
  puts "Let's start gathering food."
end

gather(items) { |list| puts "#{list.join(', ')}" }

