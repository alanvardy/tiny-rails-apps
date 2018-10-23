# frozen_string_literal: true

class User < ApplicationRecord
  validates :name, presence: true, uniqueness: true, length: { maximum: 30 }
  validates :email, presence: true, uniqueness: true, length: { maximum: 30 }
  has_many :posts
  has_many :comments
end
