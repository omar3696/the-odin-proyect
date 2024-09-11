puts 'Gestor de eventos inicializado!'

#lee toda la informacion que contiene el archivo
contents = File.read('event_attendees.csv')
puts contents

#lee linea por linea la informacion que contienen el archivo
lines = File.readlines('event_attendees.csv')
lines.each do |line|
  puts line
end

#conviere una cadena de texto a una matriz
lines.each do |line|
  columns = line.split(",")
  p columns
end

#se accede la tercera columa colums[2]
lines.each do |line|
    columns = line.split(",")
    name = columns[2]
    puts name
end

#quita el encabezado de toda la informacion que contiene
lines.each_with_index do |line,index|
    next if index == 0
    columns = line.split(",")
    name = columns[2]
    puts name
end

#ANALISIS CON CSV
#lee la informacion del archivo "name"
require 'csv'

contents = CSV.open('event_attendees.csv', headers: true)
contents.each do |row|
  name = row[2]
  puts name
end

#acceder a las columnas por sus nombres
contents = CSV.open(
  'event_attendees.csv',
  headers: true,
  header_converters: :symbol
)

#contents.each do |row|
#  name = row[:first_name]
#  zipcode = row[:zipcode]
#  puts "#{name} #{zipcode}"
#end

#se rellena con 0 el codigo postal segun la condicion
contents.each do |row|
    name = row[:first_name]
    zipcode = row[:zipcode]
  
    if zipcode.nil?
      zipcode = '00000'
    elsif zipcode.length < 5
      zipcode = zipcode.rjust(5, '0')
    elsif zipcode.length > 5
      zipcode = zipcode[0..4]
    end
  
    puts "#{name} #{zipcode}"
end

#metodo
def clean_zipcode(zipcode)
    if zipcode.nil?
      '00000'
    elsif zipcode.length < 5
      zipcode.rjust(5, '0')
    elsif zipcode.length > 5
      zipcode[0..4]
    else
      zipcode
    end
  end
  
  puts 'EventManager initialized.'
  
  contents = CSV.open(
    'event_attendees.csv',
    headers: true,
    header_converters: :symbol
  )
  
  contents.each do |row|
    name = row[:first_name]
  
    zipcode = clean_zipcode(row[:zipcode])
  
    puts "#{name} #{zipcode}"
  end