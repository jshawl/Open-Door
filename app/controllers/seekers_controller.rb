class SeekersController < ApplicationController
  # before_action :set_post, only: [:show, :edit, :update, :destroy]
  # ^^ use this!
  # before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  # or remove commented out code
  def index
    @seekers=Seeker.all
  end

  def show
    @seeker=Seeker.find(params[:id])
  end

  def new
    @seeker=Seeker.new
  end

  def edit
    @seeker=Seeker.find(params[:id])
  end

  def create
    @seeker = Seeker.new(seeker_params)
    if @seeker.save
      redirect_to @seeker
    else
      render "new"
    end
  end

  def update
    @seeker = Seeker.find(params[:id])
    if @seeker.update(seeker_params)
      redirect_to @seeker
    else
      render "edit"
    end
  end

  def destroy
    @seeker = Seeker.find(params[:id])
    @seeker.destroy
    redirect_to seekers_path
  end

  private
    def seeker_params
      params.require(:seeker).permit(:first_name, :last_name, :gender, :photo_url, :city, :email, :phone_number, :bio , :user_id)
    end

end
