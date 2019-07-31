class Product
  attr_accessor :name, :tallas #para que lean las variables externas al metodo
def initialize(name, *tallas)
    @name = name
    @tallas = tallas.map(&:to_i)
    end

end
products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines}
data.each do |prod|
ls = prod.split(', ')
products_list << Product.new(*ls)
end
nuevo_catalogo = []
File.open('nuevo_catalogo', 'w') #abre el nuevo documento
products_list.each do |product| #busca los productos
    product.tallas.pop #me lee los ultimos archivos
    File.write('nuevo_catalogo.txt', "#{product.name}, #{product.tallas.join(', ')}\n", mode: 'a') #el mode: 'a' hace que no se me transcriba el archivo es decir anexar o escribir despues del utlimo
end
print " esto es el primero "
