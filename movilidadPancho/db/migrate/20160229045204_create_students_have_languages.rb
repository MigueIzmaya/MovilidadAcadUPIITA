class CreateStudentsHaveLanguages < ActiveRecord::Migration
  def change
    create_table :students_have_languages do |t|
      t.string :alumno
      t.integer :idioma
      t.string :nivel

      t.timestamps null: false
    end
  end
end
