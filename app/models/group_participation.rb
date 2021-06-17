class GroupParticipation < ApplicationRecord
  validates_presence_of :group, :user

  belongs_to :group
  belongs_to :user
end
