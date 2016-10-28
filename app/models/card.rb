class Card < ActiveRecord::Base
  belongs_to :deck

  validates :question, :answer, :deck_id, presence: true

  def correct_answer
    self.correct = true
  end

end
