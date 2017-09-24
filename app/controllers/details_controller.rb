class DetailsController < ApplicationController

  def show
    @user = User.find(params[:id])
  end
end
