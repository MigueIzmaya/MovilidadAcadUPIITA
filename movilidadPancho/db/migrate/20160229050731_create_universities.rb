class CreateUniversities < ActiveRecord::Migration
  def change
    create_table :universities do |t|
      t.integer :idUniversidades
      t.string :nombre
      t.string :idioma
      t.string :programa_intercambio
      t.string :area_estudio
      t.integer :cupo
      t.string :tramites_especiales
      t.integer :idPaises

      t.timestamps null: false
    end
  end
end
