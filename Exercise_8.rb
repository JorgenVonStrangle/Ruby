# Pregunta 8
# Se tiene un string del tipo "1,2,7,1,3,5,3.4,9,1"
# Se pide:
# => Calcular el promedio
# =>  - Calcular la moda (o sea mostrar el número que más se repite)
arreglo = ["1","2","7","1","3","5","3.4","9","1"]
arreglo2 = arreglo.collect! {|i| i.to_f}
prom = arreglo2.inject{ |sum=0, x| sum += x } / arreglo2.size.to_f

puts "El promedio de #{arreglo2}, es: #{prom}"

f={}
fmax=0
moda=nil
arreglo2.each do |v|
	f[v] ||= 0
	f[v] += 1
	fmax,moda = f[v], v if f[v] > fmax
end

puts "La moda es #{moda}"
#Esta es otra forma de calcular la media Aritmética
#sum=0
#arreglo2.each do |num|
#	sum +=num
#end
#puts "El promedio de #{arreglo2}, es: #{(sum.to_f/arreglo2.length)}"
