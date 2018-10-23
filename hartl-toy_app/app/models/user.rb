class User < ApplicationRecord
  has_many :microposts
  validates :name, length: { maximum: 20 }, presence: true
  validates :email, length: { maximum: 30 }, presence: true
end
