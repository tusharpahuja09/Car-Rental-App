class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  # GET /cars.json
  def index
    @cars = Car.all
  end

  # GET /cars/1
  # GET /cars/1.json
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # GET /cars/1/edit
  def edit
  end

  # POST /cars
  # POST /cars.json
  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to @car, notice: 'Car was successfully created.' }
        format.json { render :show, status: :created, location: @car }
      else
        format.html { render :new }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cars/1
  # PATCH/PUT /cars/1.json
  def update
    respond_to do |format|
      if @car.update(car_params)
        format.html { redirect_to @car, notice: 'Car was successfully updated.' }
        format.json { render :show, status: :ok, location: @car }
      else
        format.html { render :edit }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cars/1
  # DELETE /cars/1.json
  def destroy
    @car.destroy
    respond_to do |format|
      format.html { redirect_to cars_url, notice: 'Car was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  def display

      if params[:user_id]
        @user_id = params[:user_id]
      end
      @cars = Car.all
      @location = params[:location]
      @manufac = params[:manufac]
      @model = params[:model]
      @style = params[:style]
      @status = params[:status]
      @license = params[:license]
      if(!@location.blank?)
        @cars = @cars.where(:location => @location)
      end
      if(!@manufac.blank?)
        @cars = @cars.where(:manufac => @manufac)
      end
      if(!@model.blank?)
        @cars = @cars.where(:model => @model)
      end
      if(!@style.blank?)
        @cars = @cars.where(:style => @style)
      end
      if(!@status.blank?)
        @cars = @cars.where(:status => @status)
      end
      if(!@status.blank?)
          @cars = @cars.where(:status => @status)

      end
      if(!@licnese.blank?)
        @cars = @cars.where(:lecense => @license)

      end
      render "index"
      end
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_car
      @car = Car.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def car_params
      params.require(:car).permit(:license, :manufac, :model, :rent_rate, :style, :location, :status)
    end

  end
