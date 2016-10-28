class Card < ActiveRecord::Base
  belongs_to :deck

  validates :question, :answer, :deck_id, presence: true

  def correct_answer
    self.correct = true
  end

  def correct?(answer)
    if answer == self.answer
      true
    else
      false
    end
  end

end
