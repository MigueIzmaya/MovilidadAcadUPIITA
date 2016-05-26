class CreateUniversityLanguages < ActiveRecord::Migration
  def change
    create_table :university_languages do |t|
    	t.belongs_to :university, index:true
    	t.belongs_to :language, index:true
    	t.string :nivel
    end
  end
end
