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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120201203519) do

  create_table "acreditaciones", :force => true do |t|
    t.string   "nombre",        :null => false
    t.string   "administrador"
    t.datetime "fecha_inicio",  :null => false
    t.datetime "fecha_termino", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "alumnos", :force => true do |t|
    t.string   "cuenta",            :null => false
    t.string   "nombre",            :null => false
    t.string   "facultad"
    t.string   "semestre"
    t.string   "grupo"
    t.string   "carrera"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "acreditaciones_id"
  end

  create_table "registros", :force => true do |t|
    t.integer  "asistencias", :default => 0,     :null => false
    t.integer  "creditos",    :default => 0,     :null => false
    t.boolean  "p1",          :default => false, :null => false
    t.boolean  "p2",          :default => false, :null => false
    t.boolean  "p3",          :default => false, :null => false
    t.boolean  "p4",          :default => false, :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
