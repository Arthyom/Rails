class Producto < ApplicationRecord
    def self.ListarTodosProductos
        Producto.all
    end
end
