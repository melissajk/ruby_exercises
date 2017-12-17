PIONEERS = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
  ]

ALPHA = 'abcdefghijklmnopqrstuvwxyz'

def convert_index(char)
  (ALPHA.index(char) + 13) % ALPHA.size
end

def decipher_rot(string)
  result = []
  string.chars.each do |char|
    if char =~ /[a-z]/
      result << ALPHA[convert_index(char)]
    elsif char =~ /[A-Z]/
      result << ALPHA[convert_index(char.downcase)].upcase
    else
      result << char
    end
  end
  result.join
end


PIONEERS.each do |pioneer|
  puts decipher_rot(pioneer)
end
  
# LS solution

# def rot13(encrypted_text)
#   encrypted_text.each_char.reduce('') do |result, encrypted_char|
#     result + decipher_character(encrypted_char)
#   end
# end

# def decipher_character(encrypted_char)
#   case encrypted_char
#   when 'a'..'m', 'A'..'M' then (encrypted_char.ord + 13).chr
#   when 'n'..'z', 'N'..'Z' then (encrypted_char.ord - 13).chr
#   else                         encrypted_char
#   end
# end

# PIONEERS.each do |encrypted_name|
#   puts rot13(encrypted_name)
# end