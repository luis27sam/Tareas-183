class Comentario < ApplicationRecord
  validates :comentario, presence: true
  belongs_to :usuario
  belongs_to :tarea
end
