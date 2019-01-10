class UsuariosController < ApplicationController
  def administrador
    @listaProductos = Producto.ListarTodosProductos
  end


  def edit
    @formAct = Producto.find( params[:id])
  end

  def destroy
    @prodBorrar= Producto.find( params[:id])
    @prodBorrar.destroy
    redirect_to index_path
  end

  def update
    @act = Producto.find( params[:id])
    @act.update(parametrosPermitidosEdit)
    redirect_to index_path
  end

  def create
    @titulo = 'Creando Producto'
    ### crear un nuevo objeto producto
    @pnuevo = Producto.new( parametrosPermitidosCreat)
    @pnuevo.save
    redirect_to index_path
  end

  def new
  end

  private
    def parametrosPermitidosEdit
      ## acceder al hash params 
      params.require(:formAct).permit(:nombre,:precio, :existencia)
    end

  private
    def parametrosPermitidosCreat
      ## acceder al hash params 
      params.require(:formNew).permit(:nombre,:precio, :existencia)
    end

end
