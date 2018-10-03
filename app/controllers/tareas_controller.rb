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
  	else render :new
  	end
  end

  def show
  	@tarea = Tarea.find(params[:id])
  	#insert into tareas (titulo,descripcion) VALUES (FORMULARIO)
  end
end
