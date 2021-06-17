class Group < ApplicationRecord
  validates_presence_of :user

  belongs_to :user
  has_many :group_participations

  def users
    return GroupParticipation.where(group: self).map { |x| User.find(x.user.id) }
  end
end
