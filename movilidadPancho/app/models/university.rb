class University < ActiveRecord::Base
	has_and_belongs_to_many :studyareas

	belongs_to :country

	has_many :subjects

	
	has_many :university_languages
	has_many :languages, :through => :university_languages

	has_many :academicselections
	has_many :students, :through => :academicselections
end
