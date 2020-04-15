# frozen_string_literal: true

def sum_of_3_or_5_multiples(final_number)
  final_sum = 0
  current_number = 0
  if final_number.class == Integer # On regarde si final_jumber est un intéger
    while current_number < final_number # On boucle le compteur tant qu'il est strictement inférieur a final_nummber
      if multiple_of_3_or_5(current_number) == true # On check si il est divisible par 3 ou 5 grace a la methode is_multiple_of_3_or_5
        final_sum += current_number # Si oui, on addition les chiffres entre eux
      end
      current_number += 1
    end
    final_sum # On retourne la variable qui contient la somme du tout
  else
    puts "Wow wow, je ne prend que des entiers naturel copain !" # Sinon on previens par une phrase
  end
end

# frozen_string_literal: true

def multiple_of_3_or_5(nb_check)
  nb_check % 3 == 0 || nb_check % 5 == 0 ? true : false # Si nb modulo (reste de la vision) 3 == 0 ou nb modulo 5 == 0 on retourne true, sinon false
end