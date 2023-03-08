# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

User.create(username: "mike", password: "password")
User.create(username: "user", password: "password")
User.create(username: "random", password: "password")
User.create(username: "cool", password: "password")
User.create(username: "other_user", password: "password")

Message.create(body: "Hello! I'm the first message in this chat", user: User.first)
