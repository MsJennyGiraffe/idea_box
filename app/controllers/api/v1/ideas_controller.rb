class Api::V1::IdeasController < ApplicationController
  respond_to :json
  def index
    @ideas = Idea.all
    respond_with @ideas
  end

  def create

  end
end
