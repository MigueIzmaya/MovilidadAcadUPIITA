class UniversitiesHaveStudyarea < ActiveRecord::Base
	belongs_to :studyarea
	belongs_to :university
end
