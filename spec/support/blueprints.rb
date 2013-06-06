require 'machinist/active_record'

User.blueprint do
      email {Faker::Internet.email}
      username {"username#{sn}"}
      password {'password'}
      password_confirmation {'password'}
#      country_of_origin {"GB"}
#      age { "3 days" }
#      color { "red" }
end