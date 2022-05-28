class User < ApplicationRecord
  has_many :microposts
  validates :name, :email, presence: true
  # validates :email, presence: true
  validates_format_of :email, with: /\b[A-Z\d._%a-z\-]+@(?:[A-Z\da-z\-]+\.)+[A-Za-z]{2,4}\z/
  # validates :email, format: { with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/ }
end
