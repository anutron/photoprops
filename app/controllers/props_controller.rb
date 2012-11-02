class PropsController < ApplicationController
  def create
    @prop = Prop.new(params[:prop])
    @prop.photo_id = params[:photo_id]
    if @prop.save
      redirect_to photos_path, notice: "The prop was added."
    else
      redirect_to photos_path, notice: "Could not add the prop."
    end
  end
  
  def destroy
    @prop = Prop.find(params[:id])
    @prop.destroy
    redirect_to photos_path, notice: "The prop was deleted."
  end
end
