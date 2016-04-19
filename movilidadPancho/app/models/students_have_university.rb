class StudentsHaveUniversity < ActiveRecord::Base
	has_one :student
	has_one :university
end
