# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



shinuku = Shop.create(:name => 'Shinjuku Nishiguchi')
ikebukuro = Shop.create(:name => 'Ikebukuro')
tokyo = Shop.create(:name => 'Tokyo yaesu')

king = Author.create(:name => 'Stephen King')
walsch = Author.create(:name => 'Neale Donald Walsch')
thomas = Author.create(:name => 'Dave Thomas')

mist = Book.create(:title => 'The Mist' , :author => king)
dream_catcher = Book.create(:title => 'Dream Catcher' , :author => king)
green_mile = Book.create(:title => 'The Green Mile' , :author => king)
conversation_with_god = Book.create(:title => 'Conversation With God' , :author => walsch)
home_with_god = Book.create(:title => 'Home with God' , :author => walsch)
programming_ruby = Book.create(:title => 'Programming Ruby' , :author => thomas)

Stock.create(:quantity => 2, :shop => shinuku, :book => conversation_with_god)
Stock.create(:quantity => 1, :shop => shinuku, :book => home_with_god)
Stock.create(:quantity => 1, :shop => shinuku, :book => dream_catcher)
Stock.create(:quantity => 3, :shop => shinuku, :book => mist)

Stock.create(:quantity => 1, :shop => ikebukuro, :book => conversation_with_god)
Stock.create(:quantity => 2, :shop => ikebukuro, :book => mist)

Stock.create(:quantity => 1, :shop => tokyo, :book => dream_catcher)
Stock.create(:quantity => 1, :shop => tokyo, :book => green_mile)
Stock.create(:quantity => 0, :shop => tokyo, :book => programming_ruby)


