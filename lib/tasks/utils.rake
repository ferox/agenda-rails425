namespace :utils do
  desc "Populate database"
  task seed: :environment do
    puts "Populando os Contatos (Contacts) no banco de dados..."
    150.times do |i|
      Contact.create!(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        kind: Kind.all.sample, 
        rmk: LeroleroGenerator.sentence([1,2].sample)
      )
    end
    puts "Populando os Contatos (Contacts) no banco de dados [OK]"
    puts "Populando os Endereços (Addresses) no banco de dados..."
    Contact.all.each do |contact|
      Address.create!(
        street: Faker::Address.street_address,
        city: Faker::Address.city,
        state: Faker::Address.state_abbr,
        contact: contact
      )
    end
    puts "Populando os Endereços (Addresses) no banco de dados [OK]"
    puts "Populando os Telefones (Phones) no banco de dados..."
    Contact.all.each do |contact|
      Random.rand(1..4).times do |i|
        Phone.create!(
          phone: Faker::PhoneNumber.cell_phone,
          contact: contact
        )
      end
    end
    puts "Populando os Telefones (Phones) no banco de dados [OK]"
  end
end
