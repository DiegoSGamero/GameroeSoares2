class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_and_belongs_to_many :properties

  validates :full_name, presence: true, format: { with: /\A\w+\s+\w+/ }
  validates :email, presence: true, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  validates :RG, presence: true, format: { with: /\A\d{1,2}\.\d{3}\.\d{3}-\d{1}\z/ }
  validates :CPF, presence: true, format: { with: /\A\d{3}\.\d{3}\.\d{3}-\d{2}\z/ }
  validates :phone_number, presence: true, format: { with: /\A\(\d{2}\) \d{5}-\d{4}\z/ }
  validates :address, presence: true
end
