class University < ActiveRecord::Base
	has_many :students_have_universities
	belongs_to :country
	has_many :subjects
end
