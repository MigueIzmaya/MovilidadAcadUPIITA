class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.integer :idMateria
      t.string :nombre
      t.string :rutaTemario
      t.integer :idUniversidad

      t.timestamps null: false
    end
  end
end
