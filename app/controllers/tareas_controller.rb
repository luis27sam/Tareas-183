class TareasController < ApplicationController
  def index
  	@tareas = Tarea.all
  end

  def new
  	@tarea = Tarea.new
  end
  
end
