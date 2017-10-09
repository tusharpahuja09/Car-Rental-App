# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([{email: 'admin123@gmail.com', password: 'admin123' ,user_type: '1'  }])
User.create([{email: 'superadmin123@gmail.com', password: 'superadmin123' ,user_type: '2'  }])
User.create([{email: 'admin1@gmail.com', password: 'admin345' ,user_type: '1'  }])
User.create([{email: 'admin2@gmail.com', password: 'admin456' ,user_type: '1'  }])
User.create([{email: 'superadmin1@gmail.com', password: 'superadmin1' ,user_type: '2'  }])
User.create([{email: 'superadmin2@gmail.com', password: 'superadmin2' ,user_type: '2'  }])
