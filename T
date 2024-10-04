import random

# Lista de caracteres para generar la adivinanza
data_list = "abcdefghijklmnopqrstuvwxyz0123456789"

# Convertir la cadena en una lista de caracteres
chardData = list(data_list)

# Pedir la contraseña al usuario
password = input("Introduce tu contraseña: ")

# Variable para almacenar la adivinanza inicial (vacia)
adivino = [''] * len(password)
#variable para controlar indice de caracter que estamos adivinando
index = 0

# Bucle hasta que se adivine toda la contraseña
while "".join(adivino) != password:
    # Generar un carácter aleatorio para la posición actual
    guess_char = random.choice(chardData)
    
    # Verificar si el carácter aleatorio coincide con el de la contraseña en la posición actual
    if guess_char == password[index]:
        adivino[index] = guess_char
        index += 1  # Pasar al siguiente carácter
    print(f"Progreso actual: {''.join(adivino)}")  # Mostrar el progreso

# Mostrar el resultado final cuando se adivine la contraseña completa
print("Tu contraseña es: " + "".join(adivino))
