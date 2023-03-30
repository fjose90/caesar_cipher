def caesar_cipher(mensage, shift)
  caracter_to_interger = mensage.codepoints
  caracter_to_interger.map! do |char_code|
    if char_code.between?(65, 90) || char_code.between?(97, 122)
      base = char_code <= 90 ? 65 : 97
      char_code += shift
      char_code = (char_code - base) % 26 + base
    end
    char_code.chr
  end
  caracter_to_interger.join('')
end
