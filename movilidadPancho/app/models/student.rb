class Student < ActiveRecord::Base
	has_many :students_have_universities
	has_many :students_have_subjects
	has_many :students_have_languages
end
