def Ordenar_cadena(s):
    Minusculas = []
    Mayusculas = []
    impar_numeros = []
    Pares_numeros = []

    for char in s:
        if char.islower():
            Minusculas.append(char)
        elif char.isupper():
            Mayusculas.append(char)
        elif char.isdigit():
            if int(char) %2 == 0:
                Pares_numeros.append(char)
            else:
                impar_numeros.append(char)

    Minusculas.sort()
    Mayusculas.sort()
    impar_numeros.sort()
    Pares_numeros.sort()

    Cadena_ordenada= Minusculas + Mayusculas + impar_numeros + Pares_numeros
    return ''.join(Cadena_ordenada)

# Ejemplo de uso
cadena = "Sortimg1234"
resultado = Ordenar_cadena(cadena)
print(resultado)