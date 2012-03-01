class UsersController < InheritedResources::Base
  before_filter :authenticate_user!

  actions :show, :update
  custom_actions :resource => :change_password
  load_and_authorize_resource


  def update
    if params[:user][:password]
      if @user.update_with_password(params[:user])
        sign_in(@user, :bypass => true)
        redirect_to root_path, :notice => "Password updated!"
      else
        render :change_password
      end
    else
      super
    end
  end


  def show
    @user = User.find(params[:id])
  end
end
