class Api::UsersController < ApplicationController
  def index

  end

  def show
  end

  def create
    @user = login(params[:email], params[:password])

    if @user
      redirect_back_or_to(:users, notice: 'Login successful')
    else
      flash.now[:alert] = 'Login failed'
      render action: 'new'
    end
  end

  def update
  end

  def destroy
    logout
    redirect_to(:users, notice: 'Logged out!')
  end
end
