class Prompt < ApplicationRecord

  has_many :users, :through => :prompt_responses

  validates_presence_of :prompt_question

end
