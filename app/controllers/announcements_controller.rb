class AnnouncementsController < ApplicationController
  def new
  	@announcement = Announcement.new
  end

  def create
  	@announcement = Announcement.new(announcement_params)
  	if @announcement.save
  		#tralala
  	else
  		render 'new'
  	end
  end

  def update
  end

  def edit
  end

  def destroy
  end

  def show
  end
  
  private
  
  	def announcement_params
  		params.require(:announcement).permit(:title,:message)
  	end
end
