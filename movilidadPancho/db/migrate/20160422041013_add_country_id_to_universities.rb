class AddCountryIdToUniversities < ActiveRecord::Migration
  def change
    add_reference :universities, :country, index: true, foreign_key: true
  end
end
