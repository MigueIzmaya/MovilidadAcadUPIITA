class CreateStudyareas < ActiveRecord::Migration
  def change
    create_table :studyareas do |t|
      t.integer :idAreasEstudio
      t.string :nombre

      t.timestamps null: false
    end
  end
end
