class UniversityLanguage < ActiveRecord::Base
	belongs_to :university
	belongs_to :language
end