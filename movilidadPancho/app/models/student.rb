class Student < ActiveRecord::Base
	has_many :studentslanguages
	has_many :languages, :through => :studentslanguages

	has_many :academicselections
	has_many :universities, :through => :academicselections

	has_many :lectures
	has_many :subjects, :through => :lectures
end
