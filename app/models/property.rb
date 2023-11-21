class Property < ApplicationRecord
  has_and_belongs_to_many :users

  validates :address, presence: true
  validates :owners, presence: { message: "Precisamos de pelo menos um proprietário declarado" }
  validates :size, presence: true
  validates :limit_type, presence: true
end
