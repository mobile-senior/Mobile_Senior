class Recommendation < ApplicationRecord
  validates_presence_of :user

  belongs_to :user
  belongs_to :quiz

  has_many :material_recommendations
  has_many :materials, through: :material_recommendations
end
