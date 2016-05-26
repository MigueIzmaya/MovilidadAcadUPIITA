class StudentController < ApplicationController
	layout "index"
	def index
		puts 
		puts
		puts
		puts "******************** MODO DEBUG DE LA APLICACIÓN **********************"
		puts 
		puts
		puts

	end
		

		
		def llenarBD

		puts 
		puts
		puts
		puts "******************** LLENADO DE DATOS DE LA BD **********************"
		puts 
		puts
		puts

			#Creación de universidades
			u1=University.new
			u1.nombre="Universidad 1"
			u1.programa_intercambio="Prog Int 1"
			u1.cupo=25
			u1.tramites_especiales="Idiomas opcionales, becas, términos negociables"

			u2=University.new
			u2.nombre="Universidad 2"
			u2.programa_intercambio="Prog Int 2"
			u2.cupo=10
			u2.tramites_especiales="Idiomas opcionales, becas, términos negociables"

			u3=University.new
			u3.nombre="Universidad 3"
			u3.programa_intercambio="Prog Int 3"
			u3.cupo=3
			u3.tramites_especiales="Idiomas opcionales, becas, términos negociables"

			u4=University.new
			u4.nombre="Universidad 4"
			u4.programa_intercambio="Prog Int 4"
			u4.cupo=8
			u4.tramites_especiales="Idiomas opcionales, becas, términos negociables"

			u5=University.new
			u5.nombre="Universidad 5"
			u5.programa_intercambio="Prog Int 5"
			u5.cupo=15
			u5.tramites_especiales="Idiomas opcionales, becas, términos negociablesc"

			

			#Creación de países
			p1=Country.new
			p1.nombre="País 1"
			p1.url_bandera="f_alemania.png"

			p2=Country.new
			p2.nombre="País 2"
			p2.url_bandera="f_alemania.png"

			p3=Country.new
			p3.nombre="País 3"
			p3.url_bandera="f_alemania.png"

			#p1.save && p2.save && p3.save


			#Creación de áreas de estudio
			a1=Studyarea.new
			a1.nombre="Área de estudio 1"

			a2=Studyarea.new
			a2.nombre="Área de estudio 2"

			a3=Studyarea.new
			a3.nombre="Área de estudio 3"

			a4=Studyarea.new
			a4.nombre="Área de estudio 4"

			a5=Studyarea.new
			a5.nombre="Área de estudio 5"

			a6=Studyarea.new
			a6.nombre="Área de estudio 6"

			a7=Studyarea.new
			a7.nombre="Área de estudio 7"

			a8=Studyarea.new
			a8.nombre="Área de estudio 8"

			a9=Studyarea.new
			a9.nombre="Área de estudio 9"

			a0=Studyarea.new
			a0.nombre="Área de estudio 10"

			#a0.save && a1.save && a2.save && a3.save && a4.save && a5.save && a6.save && a7.save && a8.save && a9.save



			#Creación de idiomas
			l_ingles=Language.new
			l_ingles.nombre="Inglés"
			#l_ingles.save

			l_frances=Language.new
			l_frances.nombre="Francés"
			#l_frances.save

			l_aleman=Language.new
			l_aleman.nombre="Alemán"
			#l_aleman.save

			l_portugues=Language.new
			l_portugues.nombre="Portugués"
			#l_portugues.save

			l_chino=Language.new
			l_chino.nombre="Chino mandarín"
			#l_chino.save

			l_italiano=Language.new
			l_italiano.nombre="Italiano"
			#l_italiano.save


			#Creación de las relaciones

			#Universidades tienen áreas de estudio
			u1.studyareas<<a1
			u1.studyareas<<a3
			u1.studyareas<<a2

			u2.studyareas<<a1

			u3.studyareas<<a1
			u3.studyareas<<a2

			u4.studyareas<<a1
			u4.studyareas<<a2
			u4.studyareas<<a3
			u4.studyareas<<a4
			u4.studyareas<<a5
			u4.studyareas<<a6
			u4.studyareas<<a7

			u5.studyareas<<a8
			u5.studyareas<<a9
			u5.studyareas<<a0
			u5.studyareas<<a1

			#Universidades tienen países
			u1.country = p1
			u2.country = p2
			u3.country = p3
			u4.country = p1
			u5.country = p2

			#Guardar todo
			u1.save && u2.save && u3.save && u4.save && u5.save

			#Universidades tienen idiomas
			u1.university_languages.create(:language => l_ingles, :nivel => "B2, TOEFL")
			u2.university_languages.create(:language => l_ingles, :nivel => "B1, TOEFL")
			u3.university_languages.create(:language => l_ingles, :nivel => "B2, IELTS 7.5")
			u4.university_languages.create(:language => l_ingles, :nivel => "C1, TOEFL")
			u5.university_languages.create(:language => l_ingles, :nivel => "B2, TOEFL")

			u1.university_languages.create(:language => l_frances, :nivel => "B2")
			u4.university_languages.create(:language => l_frances, :nivel => "B2")

			u2.university_languages.create(:language => l_aleman, :nivel => "B1")

			u5.university_languages.create(:language => l_italiano, :nivel => "A2")

			u3.university_languages.create(:language => l_aleman, :nivel => "B2")
			u3.university_languages.create(:language => l_chino, :nivel => "A1")


			#Guardar todo
			u1.save && u2.save && u3.save && u4.save && u5.save

			puts "Se crearon los datos de prueba ......"
		end
	
end