class Restaurant < ApplicationRecord
  has_many :reviews

  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  has_many :reviews, dependent: :destroy
end
