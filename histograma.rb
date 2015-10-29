puts "Ingresa una frase" #solicitar al usuario una frase
texto = gets.chomp #almacenar la frase
palabras = texto.split() #convertir  arreglo esa frase


f = Hash.new(0)  #crear un hash

palabras.each{ |elemento| f[elemento]+=1} #almacenar en el hash como clave cada palabra

f = f.sort_by do |clave,valor| #se ordenan los valores
    valor
end
f.reverse! 

f.each do |clave,valor| #se itera en la hash para mostrar la informacion
    puts "#{clave} #{valor}"
end