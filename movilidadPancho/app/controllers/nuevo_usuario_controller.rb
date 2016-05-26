class NuevoUsuarioController < ApplicationController
 
  @ordenForm=0

  #Handler de procesamiento de datos
  def validacion
    puts "************* VALIDANDO DATOS *************"
   

    #Con base en el valor de ordenForm, se toman diferentes decisiones
    case @ordenForm
      when 1
        puts "Vengo de (1: BÁSICOS)"
        #Capturar los datos del formulario
        puts params['inputNombre']
        #Redireccionar al siguiente formulario
        #redirect_to "nuevoPerfil/2"
      when 2
        puts "Vengo de (2: IDIOMAS)"

      when 3
        puts "Vengo de (3: INTERCAMBIO)"

      when 4
        puts "Vengo de (4: ECONOMIA)"

      else
        puts @ordenForm
    end
  end


  #Formulario de datos básicos
  def misdatos
  	puts "************* NUEVO USUARIO (1: BÁSICOS) *************"
    #Variable de control para verificar que se entre a las páginas en orden
    @ordenForm=1
    #Creación de una instancia de Student vacía
    nuevoEstudiante=Student.new
  end


  #Formulatio de datos de idiomas
  def mdidiomas
    puts "************* NUEVO USUARIO (2: IDIOMAS) *************"
    if @ordenForm==1 || @ordenForm==3
      @ordenForm=2
      puts params['inputNombre']
    else redirect_to "root"
    end
  end


  #Formulatio de datos de movilidad
  def mdmovilidad
    puts "************* NUEVO USUARIO (3: INTERCAMBIO) *************"
    if @ordenForm==2 || @ordenForm==4
      @ordenForm==3
    else
      redirect_to "root"
    end
  end

  
  #Formulatio de datos de economía
  def mdeconomia
    puts "************* NUEVO USUARIO (4: ECONOMIA) *************"
    if @ordenForm==3
      @ordenForm==4
    else
      redirect_to "root"
    end
  end
end
