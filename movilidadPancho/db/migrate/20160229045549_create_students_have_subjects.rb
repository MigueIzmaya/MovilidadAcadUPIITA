class CreateStudentsHaveSubjects < ActiveRecord::Migration
  def change
    create_table :students_have_subjects do |t|
      t.string :alumno
      t.integer :materia
      t.string :calificacion

      t.timestamps null: false
    end
  end
end
