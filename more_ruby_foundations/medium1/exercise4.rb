def types(array)
  yield(array)
end

birds = %w(raven finch hawk eagle)

types(birds) do |_,_,*raptors|
  puts "Raptors: #{raptors.join(', ')}."
end