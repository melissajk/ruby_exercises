def divisors(number)
  result = [number]
  return result if number == 1
  
  1.upto(number / 2) do |num|
    result << num if number % num == 0
  end
  result.sort
end

def time_it
  time_before = Time.now
  yield                       # execute the implicit block
  time_after= Time.now

  puts "It took #{time_after - time_before} seconds."
end

# divisors(1) #== [1]
# divisors(7) #== [1, 7]
# divisors(12) #== [1, 2, 3, 4, 6, 12]
# divisors(98) #== [1, 2, 7, 14, 49, 98]
# divisors(99400891) #== [1, 9967, 9973, 99400891] # may take a minute

time_it { divisors(99400891) }

