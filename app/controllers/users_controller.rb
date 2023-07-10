class UsersController < ApplicationController
  def index
    @users=User.all
    @book=Book.new
    @user=@book.user
  end

  def create
    user=User.new(user_params)
    user.save
    redirect_to user_path(@user.id)
  end

  def show
    @user=User.new
    @books=@user.books
  end

  def edit
    @user=User.find(params[:id])
  end

  def update
    @user=User.find(params[:id])
    @user.update
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :introduction, :profile_image)

  end
end
