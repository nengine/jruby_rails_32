# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Role.delete_all
admin = Role.create(:name => 'ADMIN')
sadmin = Role.create(:name => 'SUPERADMIN')
editor = Role.create(:name => 'EDITOR')

User.delete_all
u = User.create(:username => 'admin', :email => 'admin@gmail.com', :password => 'password', :password_confirmation => 'password')

UserRole.delete_all
UserRole.create(:user_id => u.id, :role_id => admin.id)
UserRole.create(:user_id => u.id, :role_id => sadmin.id)