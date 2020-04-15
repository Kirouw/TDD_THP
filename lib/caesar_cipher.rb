# frozen_string_literal: true

def letter_to_ascii(letter, shift)
  if letter.class == String
    ascii = letter.chars.map(&:ord)
    ascii_array = ascii.map{ |c| c }
    result = []

    ascii_array.each do |count|
      if (count + shift) < 65
        result << count
      elsif (count + shift) > 64 && (count + shift) < 91
        result << (count + shift)
      elsif (count + shift) > 96 && (count + shift) < 123
        result << (count + shift)
      else
        result << (count + shift) - 26
      end
    end

    result.map(&:chr).join('')

  else
    "Hop, hop, hop, pas de nombre ici !"
  end
end
