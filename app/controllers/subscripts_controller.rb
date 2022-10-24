class SubscriptsController < ApplicationController
  def new
    @subscript = Subscript.new
  end

  def create
    @subscript = Subscript.new(subscript_params)
    redirect_to new_subscript_path unless @subscript.save
  end

  def subscript_params
    params.require(:subscript).permit(:name, :email, :phone, :description, :language, :schooling)
  end
end
