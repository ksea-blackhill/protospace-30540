class PrototypesController < ApplicationController
  def index
    if user_signed_in?
      @prototypes = Prototype.all
    end
  end

  def new
    @prototype = Prototype.new
  end

  def create
    #@user = User.find(params[:user_id])
    #@prototype = @user.prototypes.new(prototype_params)
    @prototype = Prototype.create(prototype_params)
    if @prototype.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @prototype = Prototype.find(params[:id])
  end

  private

  def prototype_params
    params.require(:prototype).permit(:title,:catch_copy,:concept,:image).merge(user_id: current_user.id)
  end
end
