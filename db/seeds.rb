# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create([{email: 'admin@ncsu.edu', password: '123456' ,user_type: '1'  }])
User.create([{email: 'superadmin@ncsu.edu', encrypted_password: 'superadminadmin' ,user_type: '2'  }])
User.create([{email: 'superadmin1@ncsu.edu', password: 'superadminadmin' ,user_type: '2'  }])