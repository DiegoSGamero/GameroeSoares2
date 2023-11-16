class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :full_name, presence: true, format: { with: /\A[a-zA-Z]+\.?(\s[a-zA-Z]+\.?)+\z/, message: "should have at least 2 names" }
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
