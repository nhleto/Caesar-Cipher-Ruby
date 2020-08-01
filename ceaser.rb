
def cipher(string, num)
  array=('a'..'z').to_a
  cipher_alpha=array.rotate(num)
  to_cipher=array.zip(cipher_alpha).to_h
  answer=string.chars.map{|char| to_cipher.fetch(char,char)}.join
end

p cipher('what a string!', 5)