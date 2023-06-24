import re

def adquirir_dominios(fragmento_html):
    modelox = r"(?:https?:\/\/)?(?:www\.)?([\w.-]+)"
    dominios = set()  
    coincidencias = re.findall(modelox, fragmento_html)

    for enlace_link in coincidencias:
        enlace_link = enlace_link.replace("www.", "").replace("ww2.", "")
        dominios.add(enlace_link)
    dominios_ordenados = sorted(dominios)
    dominios_cadena = " ; ".join(dominios_ordenados)

    return dominios_cadena
numero_lineas = int(input("Ingrese el número de líneas del fragmento HTML: "))

fragmento_html = ""
for _ in range(numero_lineas):
    linea = input()
    fragmento_html += linea + "\n"

resultado = adquirir_dominios(fragmento_html)
print(resultado)