a = [1,2,3]
b = [:azul,:rojo,:amarillo]
c = ["Tacos","Quesadillas","Hamburguesas"]

d=b.reverse

a.each do |n|
	puts "#{a[n-1]} :#{d[n-1]} #{c[n-1]}"
end
