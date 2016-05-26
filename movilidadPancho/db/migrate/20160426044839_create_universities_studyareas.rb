class CreateUniversitiesStudyareas < ActiveRecord::Migration
  def change
    create_table :studyareas_universities, id: false do |t|
      t.belongs_to :university, index: true
      t.belongs_to :studyarea, index: true
  end
  end
end