class Studentslanguage < ActiveRecord::Base
	belongs_to :student
	belongs_to :language
end