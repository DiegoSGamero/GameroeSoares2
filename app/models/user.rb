class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :properties

  validates :full_name, presence: true, format: { with: /\A[a-zA-Z]+\.?(\s[a-zA-Z]+\.?)+\z/, message: "should have at least 2 names" }
  validates :email, presence: true, uniqueness: true
  validates :RG, presence: true, uniqueness: true
  validates :CPF, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :address, presence: true


end
