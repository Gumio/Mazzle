class ProfilesController < ApplicationController

  def new
  end

  def show
  end

  def create
    uploaded_file = fileupload_param[:work_image1_filename]
	  output_path = Rails.root.join('public', uploaded_file.original_filename)

	  File.open(output_path, 'w+b') do |fp|
	    fp.write  uploaded_file.read
	  end

    @user = User.new(user_params)
    @user.save
    redirect_to profiles_show_path(@user)

  end

  private
  def user_params
    params.require(:user)
          .permit(:kind, :wants, :wants_text, :work_image1_filename,
                  :work_image2_filename, :work_image3_filename,
                  :work_text1_title, :work_text2_title, :work_text3_title,
                  :work_text1_detail, :work_text2_detail, :work_text3_detail)
  end

  def store_params
    params.require(:user).permit({ :wants => [] })
  end

	def fileupload_param
	  params.require(:user).permit(:work_image1_filename,
    :work_image2_filename,
    :work_image3_filename)
	end
end
