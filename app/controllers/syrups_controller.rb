class SyrupsController < ApplicationController
  before_action :find_syrup, :except => [:index, :create, :new]

  def index
    @syrups = Syrup.all
  end

  def new
    @syrup = Syrup.new
  end

  def show
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @syrup }
    end
  end

  def create
    @syrup = Syrup.new(syrups_params)
    if @syrup.save
      flash[:notice] = "New syrup has been created"
      redirect_to syrup_path(@syrup)
    else
      flash[:alert] = @syrup.errors.full_messages.join(", ")
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update

    if @syrup.update(syrups_params)
      redirect_to @syrup
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @syrup.destroy
    redirect_to syrup_path, status: :see_other
  end

  private

  def find_syrup
    @syrup = Syrup.find(params[:id])
  end


  def syrups_params
    params.require(:syrup).permit(:name, :dose_time)
  end
end
