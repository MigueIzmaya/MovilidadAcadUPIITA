class Language < ActiveRecord::Base
	has_many :university_languages
	has_many :universities, :through => :university_languages

	has_many :studentslanguages
	has_many :students, :through => :studentslanguages
end
