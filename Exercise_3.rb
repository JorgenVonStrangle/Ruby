a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

nuevo = Array.new
nuevo = []

nuevo = a.map do |elem|
	[a[elem-1], b[elem-1], c[elem-1]]
end

puts nuevo.flatten
