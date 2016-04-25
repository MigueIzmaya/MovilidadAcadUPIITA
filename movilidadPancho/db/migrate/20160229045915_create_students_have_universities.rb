class CreateStudentsHaveUniversities < ActiveRecord::Migration
  def change
    create_table :students_have_universities do |t|
      t.string :alumno
      t.integer :universidad
      t.boolean :asignacion
      t.integer :prioridad

      t.timestamps null: false
    end
  end
end
