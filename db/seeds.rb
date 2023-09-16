# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.where(email: "yasuoacc123@gmail.com").first_or_initialize
user.update!(
    password: "Passworduser123456",
    password_confirmation: "Passworduser123456",
    role: 0
)

admin = User.where(email: "minhdh151103@gmail.com").first_or_initialize
admin.update!(
    password: "Passwordadmin123456",
    password_confirmation: "Passwordadmin123456",
    role: 2
)