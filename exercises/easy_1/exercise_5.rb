ALPHABET = ('a'..'z').to_a

def cypher(name)
  name_array = name.chars
  name_array.map do |char|
    if ALPHABET.include?(char.downcase)
      index = ALPHABET.find_index(char.downcase)
      new_char = (index < 13 ? ALPHABET[index + 13] :  ALPHABET[index - 13])
      ALPHABET[index] == char ? new_char : new_char.upcase
    else
      char
    end
  end.join('')
end

text = <<~TEXT
Nqn Ybirynpr
Tenpr Ubccre
Nqryr Tbyqfgvar
Nyna Ghevat
Puneyrf Onoontr
Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv
Wbua Ngnanfbss
Ybvf Unvog
Pynhqr Funaaba
Fgrir Wbof
Ovyy Tngrf
Gvz Orearef-Yrr
Fgrir Jbmavnx
Xbaenq Mhfr
Fve Nagbal Ubner
Zneiva Zvafxl
Lhxvuveb Zngfhzbgb
Unllvz Fybavzfxv
Tregehqr Oynapu
TEXT

array_of_names = text.split("\n")

array_of_names.each { |name| p cypher(name)}