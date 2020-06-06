class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

    # user だけだとローカル変数となる(このアクションの外側で使えない)
    # @user はインスタンス変数、@@user はグローバル変数　=> グローバル変数は強力過ぎるので、極力つかわない方がいい

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
end