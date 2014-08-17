json.array!(@users) do |user|
  json.extract! user, :id, :email, :password_encrypted, :salt
  json.url user_url(user, format: :json)
end
