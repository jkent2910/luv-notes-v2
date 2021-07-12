class PromptsController < ApplicationController

  def new
    @prompt = Prompt.new
  end

  def create
    @prompt = Prompt.new(prompt_params)

    respond_to do |format|
      if @prompt.save
        format.html { redirect_to root_path, notice: "Prompt saved." }
        format.json { render :show, status: :created, location: @prompt}
      else
        format.html { render :new }
        format.json { render json: @prompt.errors, status: :unprocessable_entity}
      end
    end
  end

  private
  def set_prompt
    @prompt = Prompt.find(params[:id])
  end

  def prompt_params
    params.require(:prompt).permit(:prompt_question)
  end

end
