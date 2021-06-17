class Material < ApplicationRecord
  validates_presence_of :user

  belongs_to :user

  has_many :material_recommendations
  has_many :recommendations, through: :material_recommendations

  scope :default_material, -> { where(type: 'DefaultMaterial') }
  scope :educator_material, -> { where(type: 'EducatorMaterial') }

  def self.types
    %w(DefaultMaterial EducatorMaterial)
  end
end
