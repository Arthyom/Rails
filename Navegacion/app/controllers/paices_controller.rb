class PaicesController < ApplicationController

  @lugar
  @casa = false

  def Index
    @lugar = 'Estamos en casa'
     @casa = true

  end

  def Edit

  end


  def alemania
    @lugar="Estoy en alemania"
    @casa = false
  end

  def mexico
    @par = params[:pars]
    @lugar = 'Estoy en mexico'
    @casa = false
  end

  def argentina 
    @lugar = 'Estoy en argentina'
    @casa = false
  end



end
