class NavigationsController < ApplicationController

  def agregarAcarro
    
    @titulo = 'Producto En Carro'

    ## verificar si no existe una sesion para el carro
    if (not session[:carrito] )
      ## crear un carrito 
      @c0 = Carrito.new 
      ## asignar a la sesion el id del objeto
      session[:carrito]= @c0.object_id
    end

    ## si existe la session, agregar el producto al carro
    @c1 = ObjectSpace._id2ref(session[:carrito])
    @c1.contenido<<Producto.find( params[:format] )

    redirect_to carro_url
  end

  def vaciarCarrito
    #vaciar los elementos del carrito
    puts 'vaciando carrito'
    @c0 = ObjectSpace._id2ref( session[:carrito] )
    @c0.contenido.clear

    #vaciar la sesion carrito
    session[:carrito] = nil
    p 'carrito vacio'

    redirect_to index_url
  end

  def index
    #reset_session
    @titulo = 'Listado De Productos'
    @listaProductos = Producto.ListarTodosProductos
  end

  def quienes
    @titulo = 'Quienes Somos'
  end

  def contacto
    @titulo = 'Contactanos'
  end

  def carro
    @titulo = 'Productos En Carro'
    @carro = ObjectSpace._id2ref(session[:carrito])
  end
end
