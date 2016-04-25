class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.integer :idPaises
      t.string :nombre
      t.string :url_bandera

      t.timestamps null: false
    end
  end
end
