class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  end

  def new
  	@tarea = Tarea.new
  end

  def create
  	@tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
  	if @tarea.save
  	redirect_to controller: 'tareas', action: 'show', id: @tarea.id 
    else render :new
  	end
  end

  def show
  	@tarea = Tarea.find(params[:id])
  	#insert into tareas (titulo,descripcion) VALUES (FORMULARIO)
  end

  def destroy
    @tarea = Tarea.find(params[:id])
    @tarea.destroy
    redirect_to controllers: "tareas",action: "index"
  end

  def edit
    @tarea = Tarea.find(params[:id])
  end


end
