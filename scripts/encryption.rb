# to encrypt a secret, use BCrypt::Password.create(secret)
# to test a secret, use BCrypt::Password.new(encrypted) == secret
# run this file using rails runner scripts/encryption.rb

# TODO:
# 1. encrypt a secret and puts encrypted string
password = "puppies"
encrypted_pw = BCrypt::Password.create(password)
puts encrypted_pw


# 2. prepare encrypted string for testing
# $2a$12$YiUztFVXqHyYE74rJtjgDeu/qpgfS/qfU.2I8GEySQi77T7PTNqg6
puts BCrypt::Password.new(encrypted_pw) == password
puts BCrypt::Password.new(encrypted_pw)

# 3. test secret against prepared encrypted string
