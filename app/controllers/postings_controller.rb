class PostingsController < ApplicationController
  def new
    @provider = Provider.find(params[:provider_id])
    @posting = @provider.postings.new
  end

  def create
    @provider = Provider.find(params[:provider_id])
    @posting = @provider.postings.create!
  end

end
