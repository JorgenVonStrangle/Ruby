# Crear repositorio en http://gitlab.cacyberlo.com.mx/
#
#Realizar un script en ruby que muestre un menu con las opciones para realizar diversas tareas:

#Menu
#Elige una opción
#1.- mayor 3 números
#2.- longitud cadena
#3.- presentación
#4.- convertidor temperaturas

#### mayor 3 números solicitar 3 números y indicar cual es el mayor de los 3
#### longitud cadena solicitar una cadena validar que tenga mas de 5 caracteres eh indicar la cantidad de caracteres que tenga solo si son mas de 5
#### presentación solicitar información nombre, fecha de nacimiento eh indicar su nombre y la edad que tiene
#### convertidor temperaturas solicitar el tipo de conversion a realizar Fahrenheit a Centígrados o Centígrados a Fahrenheit e realizar dicha conversion.
#Valores a calificar:
#- Limpieza de código 40%
#- Funcionalidad 40%
#- Uso git 20%

def menu()
	puts "Hola, bienvenido elige una opción"
	puts "1.- Mayor de 3 números"
	puts "2.- Longitud de Cadena"
	puts "3.- Presentación"
	puts "4.- Convertidor de temperaturas"
	#puts "5.- Salir"
	val=gets.chomp.to_i
	return val
end

case menu()
when 1
	# mayor 3 números solicitar 3 números y indicar cual es el mayor de los 3
	puts "Has elegido determinar el mayor de tres números"
	puts "Introduce la cantidad para el 1° número"
	n1=gets.chomp.to_i
	puts "Introduce la cantidad para el 2° número"
	n2=gets.chomp.to_i
	puts "Introduce la cantidad para el 3° número"
	n3=gets.chomp.to_i
	if n1>n2 && n1>n3
		puts "El numero mayor es el 1° y su valor es #{n1}"
	elsif n2>n3
		puts "El numero mayor es el 2° y su valor es #{n2}"
	else
		puts "El numero mayor es el 3° y su valor es #{n3}"
	end
	menu()

when 2
	# longitud cadena solicitar una cadena validar que tenga mas de 5 caracteres eh indicar la cantidad de caracteres que tenga solo si son mas de 5
	puts "Has elegido contar los caracteres de una frase"
	puts "Intoduce una cadena de caracteres para contarlos"
	phrase=gets.chomp.to_s
	cant=phrase.length
	if cant > 5
  		# la cadena es aceptable
  		puts "Tu frase: #{phrase} contiene: #{cant} caracteres"
	else
		# La cadena es muy corta
		puts 'Tu frase no es mayor a 5 caracteres, gracias por participar'
	end
	menu()

when 3
	# presentación solicitar información nombre, fecha de nacimiento e indicar el nombre y la edad que tiene
	puts "Has elegido la Presentación"
	puts "Introduce tu Nombre"
	nom=gets.chomp.to_s
	puts "Introduce tu fecha de Nacimiento en el siguiente formato"
	puts "dos dígitos para el día"
	dia=gets.chomp.to_i
	puts "Dos dígitos para el mes"
	mes=gets.chomp.to_i
	puts "Cuatro dígitos para el año"
	aa=gets.chomp.to_i
	birth=Time.mktime(aa,mes,dia)
	hoy=Time.now
	edad=hoy-birth
	puts "Hola #{nom}, tu edad es: #{edad}, años"
	menu()

when  4
	# convertidor temperaturas solicitar el tipo de conversion a realizar Fahrenheit a Centígrados o Centígrados a Fahrenheit y realizar dicha conversion.
	def menuGrados()
		puts "Has elegido convertir grados"
		puts "elige una opción"
		puts "1.- °C a °F"
		puts "2.- °F a °C"
		puts "3.- Regresar al menú principal"
		puts "4.- Salir"
		return opG=gets.chomp.to_i
	end
	def aFahr(gr)
		gr*9.0/5+32
  		
	end
	def aCel(gr)
  		(gr-32.0)*5.0/9
	end
	case menuGrados()
	when 1
		puts "Has elegido convertir °C a °F"
		puts "Introduce los Grados °C"
		cel=gets.chomp.to_f
		puts "El equivalente de los #{cel} °C, que introdujiste, equivalen a: #{aFahr(cel)} °F"
		menuGrados()

	when 2
		puts "Has elegido convertir °F a °C"
		puts "Introduce los Grados °F"
		fah=gets.chomp.to_f
		puts "El equivalente de los #{fah} °F, que introdujiste, equivalen a: #{aCel(fah)} °C"
		menuGrados()
	when 3
		menu()
	when 4
		puts "Adios!"
		
	else
		puts "La opción seleccionada no existe, por favor intenta de nuevo"
		menuGrados()
	
	end

#when 5
	#Hi
#	exit()
else
	puts "Ups, la opción #{op} seleccionada no es valida"
	menu()
end


