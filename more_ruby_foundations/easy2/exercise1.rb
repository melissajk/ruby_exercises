def step(num1, num2, step_value)
  current_value = num1
  while current_value <= num2
    yield(value)
    current_value += step_value
  end
  current_value
end

step(1, 10, 3) { |value| puts "value = #{value}" }