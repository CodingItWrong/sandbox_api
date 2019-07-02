# frozen_string_literal: true
require 'securerandom'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

widget = Widget.create!(name: 'Widget 1', description: 'This is one widget.')
Widget.create!(name: 'Widget 2', description: 'Here is another widget.')
Widget.create!(name: 'Widget 3', description: 'My third widget.')

widget.widget_comments.create!(
  username: 'First User', comment: 'This is great.',
)

widget.widget_comments.create!(
  username: 'Second User', comment: 'It is not so great.',
)

widget.widget_comments.create!(
  username: 'Third User', comment: "Yup it's great.",
)

default_user =
  User.create!(email: 'default@example.com', password: SecureRandom.hex)
default_user.posts.create!(
  title: 'My Sample Post', body: 'This is a sample post',
)
default_user.posts.create!(
  title: 'Another Sample Post', body: 'This is another',
)
