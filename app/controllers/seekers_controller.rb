class SeekersController < ApplicationController
  def index
    @seekers=Seeker.all
  end
end
