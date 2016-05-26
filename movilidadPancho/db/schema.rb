# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160426233851) do

  create_table "academicselections", force: :cascade do |t|
    t.integer "student_id",    limit: 4
    t.integer "university_id", limit: 4
    t.boolean "asignacion"
    t.integer "prioridad",     limit: 4
  end

  add_index "academicselections", ["student_id"], name: "index_academicselections_on_student_id", using: :btree
  add_index "academicselections", ["university_id"], name: "index_academicselections_on_university_id", using: :btree

  create_table "countries", force: :cascade do |t|
    t.integer  "idPaises",    limit: 4
    t.string   "nombre",      limit: 255
    t.string   "url_bandera", limit: 255
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "languages", force: :cascade do |t|
    t.integer  "idIdiomas",       limit: 4
    t.string   "nombre",          limit: 255
    t.string   "tipoCertificado", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "lectures", force: :cascade do |t|
    t.integer "student_id",   limit: 4
    t.integer "subject_id",   limit: 4
    t.float   "calificacion", limit: 24
  end

  add_index "lectures", ["student_id"], name: "index_lectures_on_student_id", using: :btree
  add_index "lectures", ["subject_id"], name: "index_lectures_on_subject_id", using: :btree

  create_table "students", force: :cascade do |t|
    t.string   "CURP",               limit: 255
    t.string   "estado",             limit: 255
    t.string   "contrasena",         limit: 255
    t.string   "nombre",             limit: 255
    t.string   "celular",            limit: 255
    t.string   "carrera",            limit: 255
    t.float    "promedio",           limit: 24
    t.string   "facebook",           limit: 255
    t.integer  "creditos",           limit: 4
    t.boolean  "priv_creditos"
    t.boolean  "priv_boleta"
    t.boolean  "priv_promedio"
    t.boolean  "priv_facebook"
    t.text     "motivos_rechazo",    limit: 65535
    t.binary   "foto_univ",          limit: 65535
    t.date     "fecha_ida"
    t.date     "fecha_vuelta"
    t.string   "g_drive",            limit: 255
    t.boolean  "encuesta_realizada"
    t.string   "coach",              limit: 255
    t.string   "boleta",             limit: 255
    t.string   "tipoIntercambio",    limit: 255
    t.integer  "anioMovilidad",      limit: 4
    t.integer  "tipoSemestre",       limit: 4
    t.string   "ingresoMensual",     limit: 255
    t.integer  "depIngreso",         limit: 4
    t.string   "empleo",             limit: 255
    t.string   "becaActual",         limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "students_have_languages", force: :cascade do |t|
    t.string   "alumno",     limit: 255
    t.integer  "idioma",     limit: 4
    t.string   "nivel",      limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "students_have_subjects", force: :cascade do |t|
    t.string   "alumno",       limit: 255
    t.integer  "materia",      limit: 4
    t.string   "calificacion", limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "students_have_universities", force: :cascade do |t|
    t.string   "alumno",      limit: 255
    t.integer  "universidad", limit: 4
    t.boolean  "asignacion"
    t.integer  "prioridad",   limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "studyareas", force: :cascade do |t|
    t.integer  "idAreasEstudio", limit: 4
    t.string   "nombre",         limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "studyareas_universities", id: false, force: :cascade do |t|
    t.integer "university_id", limit: 4
    t.integer "studyarea_id",  limit: 4
  end

  add_index "studyareas_universities", ["studyarea_id"], name: "index_studyareas_universities_on_studyarea_id", using: :btree
  add_index "studyareas_universities", ["university_id"], name: "index_studyareas_universities_on_university_id", using: :btree

  create_table "subjects", force: :cascade do |t|
    t.integer  "idMateria",     limit: 4
    t.string   "nombre",        limit: 255
    t.string   "rutaTemario",   limit: 255
    t.integer  "idUniversidad", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "university_id", limit: 4
  end

  add_index "subjects", ["university_id"], name: "index_subjects_on_university_id", using: :btree

  create_table "universities", force: :cascade do |t|
    t.integer  "idUniversidades",      limit: 4
    t.string   "nombre",               limit: 255
    t.string   "idioma",               limit: 255
    t.string   "programa_intercambio", limit: 255
    t.string   "area_estudio",         limit: 255
    t.integer  "cupo",                 limit: 4
    t.string   "tramites_especiales",  limit: 255
    t.integer  "idPaises",             limit: 4
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "country_id",           limit: 4
  end

  add_index "universities", ["country_id"], name: "index_universities_on_country_id", using: :btree

  create_table "universities_have_studyareas", force: :cascade do |t|
    t.integer  "Universities_idUniversidades", limit: 4
    t.integer  "StudyAreas_idAreasEstudio",    limit: 4
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
  end

  create_table "university_languages", force: :cascade do |t|
    t.integer "university_id", limit: 4
    t.integer "language_id",   limit: 4
    t.string  "nivel",         limit: 255
  end

  add_index "university_languages", ["language_id"], name: "index_university_languages_on_language_id", using: :btree
  add_index "university_languages", ["university_id"], name: "index_university_languages_on_university_id", using: :btree

  add_foreign_key "subjects", "universities"
  add_foreign_key "universities", "countries"
end
