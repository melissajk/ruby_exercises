
#OK

def test_odd_question
  assert(value.odd?, 'value is not odd')  # second argument is an error/fail message
end


# Better

def test_odd_question
  assert_equal(true, value.odd?)
end