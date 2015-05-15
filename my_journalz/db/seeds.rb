User.destroy_all
Post.destroy_all

admin = User.create!(
  email: 'jared.yamauchi@gmail.com',
  password: 'firefly808',
  password_confirmation: 'firefly808',
  # admin: true
)

user1 = User.create!(
  email: 'user1@gmail.com',
  password: 'user12345',
  password_confirmation: 'user12345',
  # admin: false
)

user2 = User.create!(
  email: 'user2@gmail.com',
  password: 'user23456',
  password_confirmation: 'user23456',
  # admin: false
)

user3 = User.create!(
  email: 'user3@gmail.com',
  password: 'user34567',
  password_confirmation: 'user34567',
  # admin: false
)


# Post.create!(
# 	profile_id: ,
#   title: 'First post',
#   body: 'Hey guys. This is going to be quite awesome, do you not you think?'
# )

# Post.create!(
# 	user_id: 2,
#   title: 'Second post',
#   body: 'OMG there are now two posts on the page!!'
# )

# Post.create!(
# 	user_id: 3,
#   title: 'Third post',
#   body: 'I am writing this post to render the previous post invalid. Boom.'
# )