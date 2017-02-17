class SessionsController < ApplicationController
  # before_action :signed_i

  def create
    user = User.find_by_credentials(params[:user][:email], params[:user][:password])

    if user.nil?
      flash.now[:errors] = ["Cannot find User. Invalid credentials."]
      render :new
    else

      log_in_user! user
      redirect_to user_url(user)
    end
    #don't need
    # render :create

  end

  def new
    render :new
  end

  def destroy
    # fail
    log_out!
    redirect_to new_user_url
  end

  # def sessions_params
  #   params.require(:sessions).permit([:user], [:password])
  # end
end
