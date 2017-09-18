# Create an admin user
admin = User.create!(
    name: 'Ben Morrison',
    email: 'benmorrison0@gmail.com',
    password: 'bsm11bc16',
    role: 'admin'
)

puts "Seeds finished"
puts "#{User.count} user(s) created"
