# Pregunta 7
#Generar 10 números enteros al azar y guardarlos dentro de un arreglo, luego calcular el promedio
arreglo = Array.new
arreglo = []

10.times do |n|
	arreglo[n] = rand(10)
end
puts arreglo
#Ahora, calculamos el promedio
sum=0
arreglo.each do |num|
	sum +=num
end

puts "El promedio de #{arreglo}, es: #{(sum.to_f/arreglo.length)}"
