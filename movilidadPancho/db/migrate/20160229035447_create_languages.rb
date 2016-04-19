class CreateLanguages < ActiveRecord::Migration
  def change
    create_table :languages do |t|
      t.integer :idIdiomas
      t.string :nombre
      t.string :tipoCertificado

      t.timestamps null: false
    end
  end
end
