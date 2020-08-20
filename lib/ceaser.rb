# frozen_string_literal :true
class Ceezer
  def cipher(string, num)
    alphabet = ('a'..'z').to_a
    cipher_alpha = alphabet.rotate(num)
    to_cipher = alphabet.zip(cipher_alpha).to_h
    string.chars.map { |char| to_cipher.fetch(char, char) }.join
  end
end