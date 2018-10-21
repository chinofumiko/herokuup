class UsersController < ApplicationController
  def new
    @user = User.new
  end


  def create
  @user = User.new(user_params)
     if @user.save
       redirect_to root_path, success: '登録が完了しました'
     else
       flash.now[:danger] = "登録に失敗しました"
       render :new
     end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
    #シンボルを各カラムに保存？？
    #@user = User.new(accountname: params[:user][:accountname],birthday: params[:user][:birthday],profile: params[:user][:profile])
    #@user.save
  end

  def update
    @user = User.find(params[:id])
    @user.save
  end

   private
   def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :accountname, :birthday, :profile)
   end
end