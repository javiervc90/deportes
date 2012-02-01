class CreateAcreditaciones < ActiveRecord::Migration
  def change
    create_table :acreditaciones do |t|
      t.string :nombre, :null => false
      t.string :administrador
      t.datetime :fecha_inicio, :null => false
      t.datetime :fecha_termino, :null => false

      t.timestamps
    end
  end
end
