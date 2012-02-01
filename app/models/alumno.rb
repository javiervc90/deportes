class Alumno < ActiveRecord::Base
	has_many :registros
	belongs_to :acreditacione
end
