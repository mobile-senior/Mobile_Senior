module HomeHelper
  def first_name(name)
    name.split.first
  end

  def age(birthday)
    age = Date.today.year - birthday.year
    age -= 1 if Date.today < birthday + age.years

    age
  end

  def boolean_to_s(value)
    if value
      t('senior_notification.answer_yes')
    else
      t('senior_notification.answer_no')
    end
  end

  def skill_groups_results(quiz)
    results = []
    quiz.skill_groups.each do |skill_group|
      results.push({
        id: skill_group.id,
        title: skill_group.title,
        value: quiz.skill_group_result(skill_group) ? skill_level(quiz.skill_group_result(skill_group).value) : nil
        })
    end

    results
  end

  def skills_results(quiz, skill_id)
    results = []

    skills = quiz.skills.select { |skill| skill.skill_group.id == skill_id}

    skills.each do |skill|
      results.push({
        id: skill.id,
        title: skill.title,
        value: quiz.skill_result(skill) ? skill_level(quiz.skill_result(skill).value) : nil
        })
    end

    results
  end

  def last_answered_question(quiz = nil)
    last_question_answered = '-'

    begin
      last_question_answered = quiz.question_answers.last.question.id
    rescue StandardError
      last_question_answered = '-'
    end

    return last_question_answered
  end
end
