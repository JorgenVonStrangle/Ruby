# Pregunta 9
# Se tiene un arreglo del tipo [1,2,1,3,2,1,4,7,1,2]
# Mostrar todos los índices y números que corresponden, en el ejemplo mostrado, el elemento 3 está en la posición 3, por lo tranto habría que mostrar "El elemento 3 está en la posición 3", hay que repetir eso por cada elemento que cumpla la condición.
arreglo =[1,2,1,3,2,1,4,7,1,2]

arreglo.each_with_index do |elemento, indice|
  puts "El elemento #{elemento}, está en la posición No. #{indice}"
end
