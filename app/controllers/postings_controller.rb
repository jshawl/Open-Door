class PostingsController < ApplicationController
  def index
    @postings=Posting.all
  end
  def show
    @posting=Posting.find(params[:id])
  end
  def new
    @provider = Provider.find(params[:provider_id])
    @posting = @provider.postings.new
  end
  def create
    @provider = Provider.find(params[:provider_id])
    @posting = @provider.postings.create!(posting_params)
    redirect_to provider_posting_path
  end
  def edit
    @provider = Provider.find(params[:provider_id])
    @posting = Posting.find(params[:id])
  end
  def update
    @provider = Provider.find(params[:provider_id])
    @posting = Posting.find(params[:id])
    @posting.update(posting_params.merge(user:current_user))
    redirect_to provider_path(@provider)
  end
  def destroy
    @provider = Provider.find(params[:provider_id])
    @posting = Posting.find(params[:id])
    @posting.destroy
    redirect_to provider_path(@provider)
  end
  private
  def posting_params
    params.require(:posting).permit(:title, :description, :timeframe, :pay)
  end

end
