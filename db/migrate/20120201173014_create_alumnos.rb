class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :cuenta, :null => false
      t.string :nombre, :null => false
      t.string :facultad
      t.string :semestre
      t.string :grupo
      t.string :carrera

      t.timestamps
    end
  end
end
