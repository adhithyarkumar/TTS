class StoriesController < ApplicationController
	def new

  end

  def create
    @story = Story.new(params[:story])

    @story.save
    redirect_to @story
  end

  def show
    @story = Story.find(params[:id])
  end

  def index
   @story= Story.all
  end

  private
    def story_params
      params.require(:story).permit(:text)
    end
end
