class Card < ActiveRecord::Base
  belongs_to :deck

  validates :question, :answer, :deck_id, presence: true

  def correct_answer
    self.update_attributes(correct: true)
  end

  def correct?(answer)
    if answer.downcase == self.answer.downcase
      true
    else
      false
    end
  end

end
