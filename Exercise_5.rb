numeros = [1,2,3,0,1,2,2,1,2,1,2,0,3]
colores = [:azul, :verde, :amarillo]

arreglo = Array.new
arreglo = []

arreglo = numeros.map do |i|
	if i==0
		arreglo = ":azul"
	elsif i==1
		arreglo = ":verde"
	elsif i==2
		arreglo = ":amarillo"
	else
		arreglo = "nil"
	end
end

puts arreglo
