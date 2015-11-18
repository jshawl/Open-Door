class WelcomeController < ApplicationController

  def index
    @seekers=Seeker.all
  end

end
