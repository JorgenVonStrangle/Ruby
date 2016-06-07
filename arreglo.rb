#Dado el siguiente hash
#my_class_hash = {
#  "numeros:" [n1,n2,n3,n4,n5],
#  "arrays": [[n1,n2], [n1, n2, n3], [n1, n2, n3, n4]],
#  "strings": ['cad1', 'cad2', 'cad3']
#}

#optener un array con la suma de todos los elementos de la clave numeros, un array con la suma de cada uno de los elementos del array, la concatenacion de la cadena
#ejemplo

#my_class_hash = {
#  "numeros:" [1,2,3,4,5],
#  "arrays": [[1,2], [1,2,3], [1,2,3,4]],
#  "strings": ['mi nombre es ', 'Oscar ', 'y tengo']
#}

#resultado esperado
#[15, [3, 6, 10] ,"mi nombre es Oscar y tengo"]

numeros = [1,2,3,4,5]
arrays = [[1,2], [1,2,3], [1,2,3,4]]
cadena = ['mi nombre es ', 'Oscar ', 'y tengo']
nuevo = Array.new
nuevo=[]

sum=0
numeros.each do |val|
  sum +=val
end
  nuevo[0]=sum

arrays.each do |elemento|
  if (elemento.class == Array)
    sum = 0
    for x in 0..(elemento.length-1)
      sum += elemento[x]
    end
    nuevo << sum.to_a
  end
nuevo[2] = (cadena[0]+cadena[1]+cadena[2])

puts nuevo
