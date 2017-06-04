# input:
# - a sentence or phrase with two or more words (string)
# output:
# - the middle word in the sentence/phrase

# - considerations:
# - What is the number of words is even? Midpoint +1 or Midpoint -1
# - What if there are numbers or symbols
#   - numbers and symbols a part of a name? 'U2 is my favorite band.' (Ruby says: five items)
#   - What about titles? Do these count as one? "My favorite book is 'Gone with the Wind'." (Ruby says: eight items)
#   - "Please call me at 555-1234" (Ruby says: five items)
#   - "Please send me a message at baboonstress@hotmail.com" (Ruby says: seven items)
#   - "Thank you :)" (Ruby says: three items)
#   - 'I've fallen...and I can't get up' (Ruby says: six items) ** ellipses are usually written as shown below
#   - "I've fallen... and I can't get up!" (Ruby says: seven items)
# - Should the user be allowed to omit certain words like stage directions or actions in close captioning?
#   - "This is [cough] what I've been waiting for."
#   - "He loved not wisely, but too well. (Desdemona wakes)"

# String size considerations:
# - Empty string?
# - One word in the string? 
# - two words in the string? 
# - What is the number of words is even? Midpoint +1 or Midpoint -1
#   - should you return the middle phrase and let the user choose?
# - Can I create a toggle that allows users to choose whether or not numbers should be allowed?

# Empty string, one or two items in the string ==> string
# Two arguments: string, true or false (whether or not numbers count)
# Symbols, --, emojis ==> don't count (Inform the user)
# pure numbers, numbers that include symbols, words that include symbols ==> do count!
# If the amount of words are even, inform the user and return the middle phrase.
# elipses (...) should be attached to the end of words ==> a part of the word (like punctuation)
# Titles(all words) ==> do count!
# Words inside of brackets and parenthesis (stage directions, actions) ==> *do count!
      # *although it would be good to be able to omit these from close captioning or dramatic text

