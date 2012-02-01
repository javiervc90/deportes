class AcreditacionesHaveAlumnos < ActiveRecord::Migration
  def change
    add_column :alumnos, :acreditaciones_id, :integer
  end
end
