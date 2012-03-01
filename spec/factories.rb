require 'factory_girl'

Factory.sequence :first_name do |n|
  "profile_fn_#{n}"
end

Factory.sequence :last_name do |n|
  "profile_ln_#{n}"
end


Factory.define :user do |u|
  u.username 'Test User'
  u.email 'user@test.com'
  u.password 'please'
  u.after_build do |user|
      user.profile = Factory.create(:profile, :user => user)
  end

end

Factory.define :profile do |person|
  person.first_name { Factory.next(:first_name) }
  person.last_name { Factory.next(:last_name) }
  person.association(:user)
end