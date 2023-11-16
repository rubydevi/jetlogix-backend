class UserSerializer
  include JSONAPI::Serializer
  attributes :id, :email, :created_at, :name, :role

  attribute :created_date do |user|
    user.created_at&.strftime('%m/%d/%Y')
  end
end
