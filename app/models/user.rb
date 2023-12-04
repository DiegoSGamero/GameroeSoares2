class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_and_belongs_to_many :properties

  validates :full_name, presence: true, format: { with: /\A[a-zA-Z]+\.?(\s[a-zA-Z]+\.?)+\z/, message: "O nome completo deve ter pelo menos 2 nomes" }
  validates :email, presence: true, uniqueness: true
  validates :RG, presence: true, uniqueness: true
  validates :CPF, presence: true, uniqueness: true
  validates :phone_number, presence: true
  validates :address, presence: true
  ROLES = %w[cliente Cliente Confrontante confrontante]
  validates :role, inclusion: { in: ROLES }
  validates :password, format: { with: /\A(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}\z/, message: "Deve conter pelo menos uma letra e um número" }

end
