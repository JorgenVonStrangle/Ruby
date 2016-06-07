# Pregunta 6
#Generar 20 números enteros al azar y guardarlos dentro de un arreglo, mostrar el arreglo y luego mostrar del arreglo exclusivamente aquellos números que sean mayor que 10
arreglo = Array.new
arreglo = []

20.times do |n|
	arreglo[n] = rand(15)
end
puts arreglo

puts "Ahora los mayores a 10"

mayor_a_10 = arreglo.select{ |x| x>10}
puts mayor_a_10
