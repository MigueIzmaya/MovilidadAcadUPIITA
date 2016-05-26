class CreateJoinTables < ActiveRecord::Migration
  def change
  	

    create_table :academicselections do |t|
    	t.belongs_to :student, index:true
    	t.belongs_to :university, index:true
    	t.boolean :asignacion
    	t.integer :prioridad
    end

    create_table :lectures do |t|
    	t.belongs_to :student, index:true
    	t.belongs_to :subject, index:true
    	t.float :calificacion
    end

  end
end
