class HomeController < ApplicationController

  def index
  end

  def dashboard
    @user = current_user 
    @response_count = PromptResponse.where(user_id: current_user.id).count
    @received_count = PromptResponse.where("luver_id = ? AND send_date <= ?", current_user.id, Date.today()).count

    @luv_notes_ready = []
    PromptResponse.where("luver_id = ? AND send_date <= ? AND send_date >= ?", current_user.id, Date.today(), Date.today - 7).each do |response|
      @luv_notes_ready << response
    end

    all_prompts = []

    PromptResponse.find_each do |response|
      if response.user_id == current_user.id
        prompt_to_remove = Prompt.find(response.prompt_id)
        all_prompts << prompt_to_remove
      end
    end

    prompts = Arel::Table.new(:prompts)

    @prompts = Prompt.where(prompts[:id].not_in all_prompts)
  end
end
