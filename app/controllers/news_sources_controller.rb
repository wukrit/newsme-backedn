class NewsSourcesController < ApplicationController

  def index
    topics = Topic.all
    render json: topics
  end

end
