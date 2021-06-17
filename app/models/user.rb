class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :type, :name, :birthday, :gender, :phone, :country,
                        :state, :city, :education

  scope :educator, -> { where(type: 'Educator') }
  scope :senior, -> { where(type: 'Senior') }

  # to Educator
  has_many :groups
  has_many :questions

  # to Senior
  has_many :group_participations
  has_many :question_answers
  has_many :recommendations
  has_many :quizzes

  has_many :mobile_participations
  has_many :generic_answers

  def self.types
    %w(Educator Senior)
  end
end
