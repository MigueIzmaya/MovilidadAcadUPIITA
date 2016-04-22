class AddUniversityIdToSubjects < ActiveRecord::Migration
  def change
    add_reference :subjects, :university, index: true, foreign_key: true
  end
end
