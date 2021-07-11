class PromptResponse < ApplicationRecord
  belongs_to :user
  belongs_to :prompt
end
