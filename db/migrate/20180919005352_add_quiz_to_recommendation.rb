class AddQuizToRecommendation < ActiveRecord::Migration[5.2]
  def change
    add_reference :recommendations, :quiz, foreign_key: true
  end
end
