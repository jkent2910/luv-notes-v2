class CreatePromptResponses < ActiveRecord::Migration[6.1]
  def change
    create_table :prompt_responses do |t|
      t.integer :prompt_id
      t.integer :user_id
      t.datetime :send_date
      t.text :response
      t.integer :luver_id

      t.timestamps
    end
  end
end
