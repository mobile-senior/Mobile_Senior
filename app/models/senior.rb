class Senior < User
  def groups
    return GroupParticipation.where(user: self).map { |x| Group.find(x.group.id) }
  end
end
