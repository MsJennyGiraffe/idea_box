class Api::V1::IdeasController < ApplicationController
  respond_to :json

  def index
    @ideas = Idea.all
    respond_with @ideas
  end

  def create
    @idea = Idea.create(idea_params)
  end

  def update
    @idea = Idea.find(params[:id])
    @idea.update_attributes(idea_params)
  end

  private
    def idea_params
      params.require(:idea).permit(:title, :body)
    end
end
