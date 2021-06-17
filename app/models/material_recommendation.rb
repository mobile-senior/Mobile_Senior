class MaterialRecommendation < ApplicationRecord
  validates_presence_of :material, :recommendation

  belongs_to :material
  belongs_to :recommendation
end
