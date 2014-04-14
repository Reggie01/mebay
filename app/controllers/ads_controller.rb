class AdsController < ApplicationController
  def new 
  end
  
  def show
    @ad = Ad.find(params[:id])
  end
  
  def index
    @ads = Ad.find(:all)
  end
end
