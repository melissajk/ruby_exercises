def test_raise_error
  assert_raises(NoExperienceError) do
    employee.hire
  end
end