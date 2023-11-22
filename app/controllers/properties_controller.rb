class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      redirect_to @property, notice: 'Propriedade criada com sucesso.'
    else
      render :new, status: :unprocessable_entity, alert: "Não foi possível fazer o registro dessa propriedade"
      puts @property.errors.full_messages
    end
  end

  private

  def property_params
    params.require(:property).permit(:name, :address, :owners, :size, :limit_type, :registration_number)
  end
end
