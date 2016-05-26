class Subject < ActiveRecord::Base
	belongs_to :university

	has_many :lectures
	has_many :students, :through => :lectures
end
