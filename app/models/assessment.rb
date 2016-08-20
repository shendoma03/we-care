class Assessment < ApplicationRecord
  validates :question, presence: true, length: { minimum: 6 }

  validates :choice1, presence: true
  validates :choice2, presence: true
  validates :choice3, presence: true
  validates :choice4, presence: true

  validates :score1, presence: true, numericality: { only_double: true }, length: { within: 1..10 }
  validates :score2, presence: true, numericality: { only_double: true }, length: { in: 1..10 }
  validates :score3, presence: true, numericality: { only_double: true }, length: { in: 1..10 }
  validates :score4, presence: true, numericality: { only_double: true }, length: { in: 1..10 }

end
