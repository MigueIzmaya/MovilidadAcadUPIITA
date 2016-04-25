class CreateUniversitiesHaveStudyareas < ActiveRecord::Migration
  def change
    create_table :universities_have_studyareas do |t|
      t.integer :Universities_idUniversidades
      t.integer :StudyAreas_idAreasEstudio

      t.timestamps null: false
    end
  end
end
