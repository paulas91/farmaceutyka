class SyrupsController < ApplicationController

  def index
    @syrups = Syrup.all
  end

  def new
    @syrup = Syrup.new
  end

  def create
    @syrup = Syrup.new(syrups_params)
    if @syrup.save
      flash[:notice] = "New syrup has been created"
      redirect_to article_path(@syrup)
    else
      flash[:alert] = @syrup.errors.full_messages.join(", ")
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @syrup = Syrup.find(params[:id])
  end

  def update
    @syrup = Syrup.find(params[:id])

    if @syrup.update(syrups_params)
      redirect_to @syrup
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @syrup = Syrup.find(params[:id])
    @syrup.destroy

    redirect_to syrups_path, status: :see_other
  end



  def syrups_params
    params.require(:syrup).permit(:type, :time)
  end
end
