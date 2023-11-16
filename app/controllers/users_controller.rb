class UsersController < ApplicationController
  def index
  end

  def show
  end

  def new
  end

  def create
    @user = User.new(user_params)
    @user.address = "#{params[:user][:street]}, #{params[:user][:number]}, #{params[:user][:neighborhood]}, #{params[:user][:city]}"

    if @user.save
      redirect_to new_session_path
    else
      render :new, status: :unprocessable_entity, alert: "Não foi possível processar seus dados"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :CPF, :RG, :street, :number, :neighborhood, :city)
  end

end
