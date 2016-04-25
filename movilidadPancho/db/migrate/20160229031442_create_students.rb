class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :CURP
      t.string :estado
      t.string :contrasena
      t.string :nombre
      t.string :celular
      t.string :carrera
      t.float :promedio
      t.string :facebook
      t.integer :creditos
      t.boolean :priv_creditos
      t.boolean :priv_boleta
      t.boolean :priv_promedio
      t.boolean :priv_facebook
      t.text :motivos_rechazo
      t.binary :foto_univ
      t.date :fecha_ida
      t.date :fecha_vuelta
      t.string :g_drive
      t.boolean :encuesta_realizada
      t.string :coach
      t.string :boleta
      t.string :tipoIntercambio
      t.integer :anioMovilidad
      t.integer :tipoSemestre
      t.string :ingresoMensual
      t.integer :depIngreso
      t.string :empleo
      t.string :becaActual

      t.timestamps null: false
    end
  end
end
