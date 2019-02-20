# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Populando a tabela Kinds
puts "Populando os Tipos de Contatos (Kinds) no banco de dados..."
Kind.create!([{description: "Floripa"}, {description: "RIO"}, {description: "CBPF"}, {description: "Radix"}])
puts "Populando os Tipos de Contatos (Kinds) no banco de dados...[OK]"
