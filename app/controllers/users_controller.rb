class UsersController < ApplicationController
  def index
    @query = params[:search]&.dig(:query)
    if @query.present?
      search_query = "%#{@query}%"
      @users = User.where('full_name ILIKE :query', query: search_query)
    else
      @users = User.all
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def profile
    @user = current_user
  end

  # def new
  #   # @user = User.new
  # end

  # def create
  #   # @user = User.new(user_params)

  #   # if @user.save
  #   #   redirect_to user_session_path
  #   # else
  #   #   render :create, status: :unprocessable_entity
  #   # end
  # end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit(:full_name, :email, :CPF, :address, :phone_number, :RG)
  end

end
