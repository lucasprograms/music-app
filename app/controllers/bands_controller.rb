class BandsController < ApplicationController
  def index
    @bands = Band.all
  end

  def new
    @band = Band.new
  end

  def edit
    @band = Band.find(params[:id])
  end
  
  def show
    @band = Band.find(params[:id])
  end

  def create
    @band = Band.new(band_params)

    if @band.save
      flash[:success] = ["Band added"]
      redirect_to band_url @band
    else
      flash[:danger] = @band.errors.full_messages
      redirect_to new_band_url
    end
  end

  def update
    @band = Band.find(params[:id])
    
    if @band.update_attributes(band_params)
      flash[:success] = ['Band has been updated']
      redirect_to band_url @band
    else
      flash[:danger] = @band.errors.full_messages
      redirect_to edit_band_url @band
    end
  end

  def destroy
    @band = Band.find(params[:id])

    if @band.destroy
      flash.now[:danger] = ['BAND HAS BEEN OBLITERATED']
      render :index
    else
      flash[:danger] = ['Band is invincible!']
      redirect_to band_url @band
    end
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
