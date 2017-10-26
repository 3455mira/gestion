# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'mime/types'

img = File.join(Rails.root, "/app/assets/images/seed_icon/school.png") 
Icon.create(name_icon: 'aaa', image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
#img = File.join(Rails.root, "/app/assets/images/seed_icon/お出かけ.png") 
#Icon.create(name_icon: 'お出かけ',image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
#img = File.join(Rails.root, "/app/assets/images/seed_icon/趣味.png") 
#Icon.create(name_icon: '趣味', image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
#img = File.join(Rails.root, "/app/assets/images/seed_icon/習い事.png") 
#Icon.create(name_icon: '習い事', image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
#img = File.join(Rails.root, "/app/assets/images/seed_icon/病院.png") 
#Icon.create(name_icon: '病院', image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
#img = File.join(Rails.root, "/app/assets/images/seed_icon/買い物.png") 
#Icon.create(name_icon: '買い物', image_icon: File.basename(img), image_binary: File.read(img), image_type: MIME::Types.type_for(img)[0].to_s)
