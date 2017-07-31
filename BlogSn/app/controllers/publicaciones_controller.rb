class PublicacionesController < ApplicationController
  def index
    @listaPublicaciones = Post.all
    @titulo = 'Index'
  end

  def new
    @titulo = 'Nuevo Post'
  end

  def create
    @nuevoPost = Post.new( permitirParametrosNew)
    @nuevoPost.save
    redirect_to index_path
  end

  def edit
    @titulo = 'Editar Post'
    @postEdit = Post.find( params[:id] )
  end

  def show
  end

  def destroy
    @postEliminar = Post.find(params[:id])
    @postEliminar.delete
    redirect_to index_path
  end

  def update
    @postEdit = Post.find( params[:id] )
    @postEdit.update(permitirParametrosEdit)
    redirect_to index_path
  end

  private
  def permitirParametrosNew
    params.require(:postNuevo).permit(:titulo, :autor, :cuerpo, :imagen, :fecha)
  end

    private
  def permitirParametrosEdit
    params.require(:postEdit).permit(:titulo, :autor, :cuerpo, :imagen, :fecha)
  end



end
