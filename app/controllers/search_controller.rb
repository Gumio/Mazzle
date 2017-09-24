class SearchController < ApplicationController

  def show
    @users = User.all
  end

  def result
    if request.post? then
      search_word = params[:user][:freeword]
      kinds = params[:user][:kinds]
      @users = User.where("mail_ like '%" + search_word + "%'")
    else
      @users = User.all
    end
  end


  private
   def array_custom(array)
     kinds = params[:user][:kinds].join(',')
   end
end
