class CreateRegistros < ActiveRecord::Migration
  def change
    create_table :registros do |t|
      t.integer :asistencias, :null => false, :default => 0
      t.integer :creditos, :null => false, :default => 0
      t.boolean :p1, :null => false, :default => false
      t.boolean :p2, :null => false, :default => false
      t.boolean :p3, :null => false, :default => false
      t.boolean :p4, :null => false, :default => false

      t.timestamps
    end
  end
end
