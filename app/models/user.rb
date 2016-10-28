class User < ActiveRecord::Base
  has_many :rounds

  validates :name, :username, :email, presence: true
end
