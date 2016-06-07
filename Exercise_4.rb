a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

nuevo = Array.new
nuevo = []

nuevo = a.map do |elem|
	[a[elem-1].to_s, b[elem-1].to_s, c[elem-1]]
end

puts nuevo.flatten
