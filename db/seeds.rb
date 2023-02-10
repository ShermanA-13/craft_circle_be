Item.destroy_all
User.destroy_all

users = FactoryBot.create_list(:user, 10)

users.each do |user|
  FactoryBot.create_list(:item, 5, { user_id: user.id, user_password_digest: 123_456 })
end
