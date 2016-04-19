class Subject < ActiveRecord::Base
	belongs_to :university
	has_many :students_have_subjects
end
