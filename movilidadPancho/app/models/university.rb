class University < ActiveRecord::Base
	has_many :students_have_universities
	has_many :universities_have_studyareas
	belongs_to :country
	has_many :subjects

end
