class User < ApplicationRecord
  # Include default devise modules
  devise :database_authenticatable
end
