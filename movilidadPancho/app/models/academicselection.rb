class Academicselection < ActiveRecord::Base
	belongs_to :student
	belongs_to :university
end