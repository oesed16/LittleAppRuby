=begin
    1. El programa le da la bienvenida al usuario.
    2. El programa muestra "Definición" con la respectiva descripción.
    3. El usuario ingresa la respuesta en el campo "Adivinar".
        Si es correcto, vuelve al punto 2.
        De lo contrario, sigue en el punto tres, hasta que que sea correcto.
    4. Fin del juego
        El programa termina cuando el usuario responde correctamente todas las preguntas del .txt
=end

arr_ques_ans = IO.readlines("definiciones.txt") # Convierte cada línea del .txt en un array.
l = arr_ques_ans.length # Calcula la longitud del array que contiene las definiciones y las respuestas.

puts "Bienvenido a reto 5. Para jugar, sólo ingresa el término correcto para cada una de las definiciones, 
    el juego terminará cuando respondas correctamente a cada una de ellas. ¿Listo? ¡Vamos!"
    # Mensaje de inicio del juego, para facilitar la interacción con el usuario.

i = 0 # Contador que permite seleccionar la posición específica del elemento dentro del array.
while i < l # Ciclo que determina el inicio y el final del juego.
    puts "Definición: " # Introducción a la definición.
    puts arr_ques_ans[i] # Muestra la definición en la posición correspondiente dentro del array.
    print "Ingresa tu respueta: " # Indicación para que el jugador ingrese la respuesta.
    ans = gets # Captura la respuesta del jugador.
    answer = ans.downcase # Convierte a minúsculas la respuesta del jugador.
    puts " "
    while answer != arr_ques_ans[i + 1] # Ciclo que determina si la respuesta es correcta y por lo tanto, la posibilidad de avance del jugador.
        puts "¡ Incorrecto !" # Mensaje de notificación cuando la respuesta es incorrecta.
        print "Ingresa tu respueta de nuevo: " # Indicación para que el jugador ingrese de nuevo la respuesta.
        ans = gets # Captura la nueva respuesta del jugador.
        answer = ans.downcase # Convierte a minúsculas la nueva respuesta del jugador.
        puts " "
    end
    puts "¡ Correcto !" # Mensaje de notificación cuando la respuesta es correcta.
    puts " "
    i = i + 3 # Posición de la siguiente definición dentro del .txt.
end
puts "GANASTE !!!" # Indica que el juego terminó.
puts " "