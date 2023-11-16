class AdminsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)

    if @admin.save
      redirect_to admin_new_session_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def admin_params
    params.require(:admin).permit(:full_name, :email, :username)
  end
end
